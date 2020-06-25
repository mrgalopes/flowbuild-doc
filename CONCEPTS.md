# Workflow Concepts

There are some concepts and definitions associated with workflow that are
fundamental to understand. These will make the learning process smoother.

Such concepts are:
- Nodes
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

