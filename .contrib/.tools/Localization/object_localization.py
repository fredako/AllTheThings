"""
Functions used for object localization (all TODOs and simple sync when adding/removing objects in enUS).
"""

import fileinput
import re
from collections import namedtuple

import requests
from bs4 import BeautifulSoup

custom_objects_const = 9000000


def get_localized_obj_name(obj_id, lang_code="en", game_flavor="retail"):
    if lang_code == "en":
        lang_code = ""
    if game_flavor == "retail":
        game_flavor = ""
    URL = "https://"
    if lang_code != "":
        URL += f"{lang_code}."
    if game_flavor != "":
        URL += f"{game_flavor}."
    URL += f"wowhead.com/object={obj_id}"

    page = requests.get(URL)
    if "notFound" in page.url:
        print(f"Can't find {obj_id} on Wowhead!")
        return ""
    soup = BeautifulSoup(page.content, "html.parser")
    heading = soup.find("h1", class_="heading-size-1")
    if heading is None:
        print(f"Can't find heading-size-1 for {obj_id} on Wowhead!")
        return ""
    # not localized names look like [en_obj_name] on Wowhead
    if heading.text.startswith("["):
        print(f"No localization for {obj_id}: {heading.text}")
        return ""
    if '"' in heading.text:
        return heading.text.replace('"', '\\"')
    return heading.text


def get_todo_lines_and_og_names(lines):
    todo_dict = {}
    original_obj_names = {}
    for ind, line in enumerate(lines):
        if "OBJECT_ID_NAMES" in line:
            # print(f"Found beginning at line {ind + 2}!")
            while True:
                line = lines[ind]
                if "}" in line:
                    # print(f"Found ending at line {ind - 1}!")
                    break
                if "--TODO: " in line:
                    obj_id = re.search(r"\d+", line).group()
                    if int(obj_id) > custom_objects_const:  # custom objects
                        ind += 1
                        continue
                    todo_dict[ind] = obj_id
                    # have to get name from Wowhead cause it might be name from non retail in this line
                    original_obj_names[ind] = get_localized_obj_name(obj_id)
                ind += 1
            break
    return todo_dict, original_obj_names


def get_localized_names(todo_dict, lang_code):
    localized_dict = {}
    for obj_line_ind, obj_id in todo_dict.items():
        localized_obj_name = get_localized_obj_name(obj_id, lang_code)

        # no obj_id found, no heading found or no localization
        if localized_obj_name == "":
            continue

        localized_dict[obj_line_ind] = localized_obj_name
        print(f"{obj_id}: {localized_obj_name}")

    return localized_dict


def localize_objects(filename, lang_code):
    print(f"Starting {lang_code}!")
    file = open(filename)
    lines = file.readlines()

    todo_dict, original_obj_names = get_todo_lines_and_og_names(lines)

    print(f"Names to localize: {len(todo_dict)}")

    localized_dict = get_localized_names(todo_dict, lang_code)

    for line in fileinput.input(filename, inplace=True):
        line_ind = fileinput.filelineno() - 1  # filelineno() indexing starts from 1
        if line_ind in localized_dict:
            obj_name = localized_dict[line_ind]
            obj_id = todo_dict[line_ind]
            original_obj_name = original_obj_names[line_ind]
            line = f'\t[{obj_id}] = "{obj_name}",\t-- {original_obj_name}\n'
        print(line, end="")  # this writes to file


def sort_objects(filename):
    file = open(filename)
    lines = file.readlines()
    lines_copy = lines.copy()

    todo_dict = {}
    for ind, line in enumerate(lines):
        if "OBJECT_ID_NAMES" in line:
            first_obj_line = ind + 2
            ind += 2
            if "enUS" in filename:
                first_obj_line -= 1
                ind -= 1
            # print(f"Found beginning at line {first_obj_line}!")
            while True:
                line = lines[ind]

                if "}" in line:
                    last_obj_line = ind - 1
                    # print(f"Found ending at line {last_obj_line}!")
                    break

                obj_id = re.search(r"\d+", line).group()
                todo_dict[ind] = int(obj_id)
                ind += 1
            break
    sorted_list = list(
        dict(sorted(todo_dict.items(), key=lambda item: item[1])).items()
    )

    obj_ind = 0
    for line in fileinput.input(filename, inplace=True):
        line_ind = fileinput.filelineno() - 1  # filelineno() indexing starts from 1
        if first_obj_line <= line_ind <= last_obj_line:
            line = lines_copy[sorted_list[obj_ind][0]]
            obj_ind += 1
        print(line, end="")  # this writes to file


ObjectsInfo = namedtuple("ObjectsInfo", "objects first_obj_line last_obj_line")
Object = namedtuple("Object", "id name line")


def get_objects_info(filename):
    sort_objects(filename)
    file = open(filename)
    lines = file.readlines()
    file.close()

    objects = []
    first_obj_line = 0
    last_obj_line = 0
    for ind, line in enumerate(lines):
        if "OBJECT_ID_NAMES" in line:
            first_obj_line = ind + 2
            ind += 2
            if "enUS" in filename:
                first_obj_line -= 1
                ind -= 1
            # print(f"Found beginning at line {first_obj_line}!")
            while True:
                line = lines[ind]

                if "}" in line:
                    last_obj_line = ind - 1
                    # print(f"Found ending at line {last_obj_line}!")
                    break

                obj_id = re.search(r"\d+", line).group()

                if "GetSpellInfo" in line:  # skip GetSpellInfo lines
                    ind += 1
                    objects.append(Object(int(obj_id), "GetSpellInfo", line))
                    continue
                obj_name = re.findall('"([^"]*)"', line)[0]
                # new entry, need to get the name, this only happens in enUS
                if len(obj_name) == 0 and int(obj_id) < custom_objects_const:
                    obj_name = get_localized_obj_name(obj_id)
                    line = re.sub('".*"', f'"{obj_name}"', line)
                    print(f"New object {obj_id}: {obj_name}")
                objects.append(Object(int(obj_id), obj_name, line))
                ind += 1
            break

    # replace all lines because we might have localized new objects
    localized_obj_lines = [i.line for i in objects]
    lines[first_obj_line : last_obj_line + 1] = localized_obj_lines
    file = open(filename, "w")
    file.writelines(lines)
    file.close()

    objects = [obj for obj in objects if obj.name != "GetSpellInfo"]

    return ObjectsInfo(objects, first_obj_line, last_obj_line)


game_flavors = ["retail", "classic", "tbc"]


def get_new_object_line(obj_id, obj_name, lang_code):
    print(f"New object {obj_id}: {obj_name}")

    for game_flavor in game_flavors:
        localized_obj_name = get_localized_obj_name(obj_id, lang_code, game_flavor)
        if localized_obj_name != "":
            break

    if obj_name == "":  # those weird objects that don't have page even in enUS
        new_object = f'\t--TODO: [{obj_id}] = "",\t--\n'
    elif lang_code == "tw" or localized_obj_name == "":  # no translation on Wowhead
        new_object = f'\t--TODO: [{obj_id}] = "{obj_name}",\t-- {obj_name}\n'
    else:  # all good (maybe)
        new_object = f'\t[{obj_id}] = "{localized_obj_name}",\t-- {obj_name}\n'
        if game_flavor != "retail":
            new_object = re.sub(
                "\n",
                f"\t--TODO: This was taken from {game_flavor} Wowhead\n",
                new_object,
            )

    print(new_object)
    return new_object


def sync_objects(objects, filename, lang_code):
    print(f"Syncing {lang_code}!")
    localized_objects, first_obj_line, last_obj_line = get_objects_info(filename)

    new_tail = False
    localized_ind = 0
    for ind, (obj_id, obj_name, _) in enumerate(objects):
        if localized_ind == len(localized_objects):  # new objects in tail
            new_tail = True
            break
        localized_obj_id = localized_objects[localized_ind].id
        if obj_id < localized_obj_id:  # new object
            new_object = get_new_object_line(obj_id, obj_name, lang_code)
            localized_objects.insert(
                localized_ind, Object(obj_id, obj_name, new_object)
            )
        elif obj_id > localized_obj_id:  # deleted object
            while obj_id > localized_obj_id:
                print(f"Deleted object {localized_obj_id}")
                del localized_objects[localized_ind]
                localized_obj_id = localized_objects[localized_ind].id
        localized_ind += 1

    if new_tail:
        for i in range(ind, len(objects)):
            obj_id, obj_name, _ = objects[i]
            new_object = get_new_object_line(obj_id, obj_name, lang_code)
            localized_objects.append(Object(obj_id, obj_name, new_object))
            localized_ind += 1
    if localized_ind < len(localized_objects):  # we need to delete objects in tail
        print("Deleted objects ")
        for del_obj in localized_objects[localized_ind:]:
            print(del_obj)
        del localized_objects[localized_ind:]

    f = open(filename)
    contents = f.readlines()
    f.close()
    localized_obj_lines = [i.line for i in localized_objects]
    contents[first_obj_line : last_obj_line + 1] = localized_obj_lines
    f = open(filename, "w")
    f.writelines(contents)
    f.close()


def copy_esES_objects_to_esMX():
    es_objects = get_objects_info("../../../locales/esES.lua").objects
    _, esMX_start, esMX_end = get_objects_info("../../../locales/esMX.lua")
    f = open("../../../locales/esMX.lua")
    contents = f.readlines()
    f.close()
    localized_obj_lines = [i.line for i in es_objects]
    contents[esMX_start : esMX_end + 1] = localized_obj_lines
    f = open("../../../locales/esMX.lua", "w")
    f.writelines(contents)
    f.close()