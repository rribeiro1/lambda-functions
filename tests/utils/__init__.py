import os
import json


def load_event_from_fixture(file_name):
    here = os.path.dirname(__file__)
    with open(os.path.join(here, '..', 'fixtures', file_name)) as file:
        event = json.load(file)
        return event
