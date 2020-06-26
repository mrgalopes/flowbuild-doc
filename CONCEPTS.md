# Workflow Concepts

There are some concepts and definitions associated with workflow that are
fundamental to understand. These will make the learning process smoother.

Such concepts are:
- Nodes
- Activity Managers
- Actor
- Bag
- Blueprint
- References and Lisp


# Bag

After a node is run, its result can only be accessed by the next one, using
`"$ref": "result.value"`, changing value for the right property. If you need
to keep information for later, a bag is used. It stores data until the end of
the current process, and only for it.

To use it, write a `SystemTask` node:

```js
{
  id: "3",
  type: "SystemTask",
  category: "SetToBag",
  name: "Set values on bag",
  next: "4",
  lane_id: "1",
  parameters: {
    input: {
      name: "John"
      value: {"$ref": "result.value"}
    }
  }
},
```

This will add or update the bag. After this node runs, the bag will contain a
key called `name` with a value called `"John"` and a key called `value` 
containing the result from the previous node.

To access the values in the bag, you can use references. For instance,
`"$ref": "bag.name"` will retrieve the value from the bag with the key of 
`name`.

# Activity Managers
TODO

# Actors
TODO

# Blueprint

A blueprint is a JavaScript object that represents the structure of the 
process. It contains all the nodes that the process requires, not necessarily
in order. Also, it contains other properties that help to describe the process,
including:
- Requirements
- Prepare
- Lanes
- Environment

The basic structure of a blueprint specification is:

``` js
const blueprint_spec = {
  requirements: [],
  prepare: [],
  nodes: [
    // list of nodes...
  ],
  lanes: [
    // list of lanes...
  ],
  environment: {},
}
```

## Requirements
It's possible to declare dependencies to be used in nodes. For example, the
`core` requirement provides functions that can be called in the Lisp 
environment.

## Prepare
TODO

## Lanes
Lanes defines which type of actor can access certain nodes. For instance, if a
node can only be reached by a "manager", there would be a manager lane with an
id, and the node would have this `lane_id`. This is called a *claim*. An example
of this is shown as:

``` js
const blueprint_spec = {
  requirements: [],
  prepare: [],
  nodes: [
    // other nodes...
    {
      id: "9",
      // ...other informations
      lane_id: "5"
    }
  ],
  lanes: [
    // other lanes
    {
      id: "5",
      name: "manager",
      rule: lisp.validate_claim("manager") // TODO check lisp
    }
  ],
  environment: {},
};
```

As such, any actor that tries to access this node would have to have a manager
claim:

``` js
const manager_data = {
  id: "2",
  claims: ["manager"] // Can have other claims too!
};
```

## Environment
TODO
