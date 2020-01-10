import logging
import json

log = logging.getLogger()
log.setLevel(logging.INFO)


def handler(event, context):
    trigger_source = event['triggerSource']
    log.info(json.dumps(event))

    if trigger_source == 'PostConfirmation_ConfirmSignUp':
        print('Test')
    else:
        log.info('Unhandled event trigger source: {}'.format(trigger_source))

    return event
