/**
 * @file anatomy_workflow
 *
 * @brief Describes the anatomy of a workflow
 *
 */

/* 0. Dependencies import */
const readlineSync = require("readline-sync");
const lisp = require("../src/core/lisp");
const settings = require("../settings/settings");
const { Engine } = require("../src/engine/engine");

/* 1. Declaration of the blueprint */
const blueprint_spec = {};

/* 2. Declaration of the actors of the workflow */
const actor_data = {
    id: "1",
    claims: []
};

/* 3. Declaration of async func to run the workflow */
const run_example = async() => {};

/* 4. Run the function */
run_example()
    .then( resp => {console.log(resp)}) /* Show the result */
    .catch( err => {console.log(err)})  /* Catch any errors */
