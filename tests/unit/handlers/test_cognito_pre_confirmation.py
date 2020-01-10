import unittest

from unittest.mock import patch
from unittest.mock import MagicMock

from handlers.cognito_post_confirmation import handler

import tests.utils as utils


class TestPostConfirmationFunction(unittest.TestCase):

    @patch('handlers.cognito_post_confirmation.log')
    def test_should_log_unhandled_event(self, mock_logging):
        event = {
            'triggerSource': 'anyEvent'
        }
        handler(event, '')
        self.assertTrue(mock_logging.info.called)


