exports.handler = async function (event, context) {
    console.log('## ENVIRONMENT VARIABLES: ' + JSON.stringify(process.env, null, 2))
    console.log('## CONTEXT: ' + JSON.stringify(context, null, 2))
    console.log('## EVENT: ' + JSON.stringify(event, null, 2))

    myName = event['my-name']

    if (myName === null || myName === '') {
        throw new Error("Required 'my-name' value cannot be empty. Check the input event.");
    }

    return {
        message: 'Hello, ' + myName + '!'
    }
}
