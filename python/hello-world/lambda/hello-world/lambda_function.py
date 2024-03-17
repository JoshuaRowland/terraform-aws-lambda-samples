import json
import logging

logger = logging.getLogger()
logger.setLevel(logging.INFO)

def lambda_handler(event, context):
    logger.info('## EVENT\r' + json.dumps(event, indent=2))

    my_name = event['my-name']

    if not my_name:
        raise ValueError("Required 'my-name' value cannot be empty. Check the input event.")

    return {
        'message': 'Hello, {}!'.format(my_name)
    }
