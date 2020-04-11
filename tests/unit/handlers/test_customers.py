import unittest

from handlers.customers import handler


class TestPostConfirmationFunction(unittest.TestCase):

    def test_should_log_unhandled_event(self):
        event = {
            'triggerSource': 'anyEvent'
        }
        result = handler(event, '')
        self.assertEqual(event, result)


