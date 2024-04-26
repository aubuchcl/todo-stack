# Todo Stack Demo

This is a demonstration stack that shows a simple javascript + redis todo application.  To use this application you'll need access to:

1. A Hub on the Cycle platform.
2. A live server in the hub.
3. An environment. 

The documentation walks through each of these steps in the getting started section, starting with [configuring your hub](https://docs.cycle.io/getting-started/overview/configuring-your-hub/). 

For information on how to create and deploy a stack on Cycle, check out [this page](https://docs.cycle.io/reference/stacks/#importing-from-a-git-repo-recommended).

## Interacting with the Service
This demonstration is meant to be usable with needing to set up DNS.  To run requests against the service use the following cURL calls.  The `LB_IP` is the IP address of the load balancer running in your environment. 

### Create

```bash 
curl -X POST -d '{"todo": "Buy groceries"}' -H "Content-Type: application/json" http://LB_IP:5000/todos
```

### Read

```bash
curl http://LB_IP:5000/todos
```

### Update 

```bash 
curl -X PUT -d '{"todo": "Buy new groceries", "completed": true}' -H "Content-Type: application/json" http://LB_IP:5000/todos/TODO_ID
```

### Delete

```bash
curl -X DELETE http://LB_IP:5000/todos/TODO_ID
```

