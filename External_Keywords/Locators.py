import json
import jsonpath

def read_locator_from_json(locatorname):
    response = json.loads("../JsonFiles/Elements.json")
    value = jsonpath.jsonpath(response,locatorname)
    return value