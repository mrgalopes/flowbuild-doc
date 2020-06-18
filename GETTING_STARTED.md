# Getting Started

## Sections

This file structure is based on Django docs

- [Sections](#sections)
- [Why Flowbuild?](#why-flowbuild)
  - [Reproducible](#reproducible)
  - [Independent](#independent)
  - [Easy to explain and to reason about](#easy-to-explain-and-to-reason-about)
- [Install Flowbuild (Quick Install Guide)](#install-flowbuild-quick-install-guide)
  - [Install node](#install-node)
  - [Setup Docker](#setup-docker)
  - [Clone the repo](#clone-the-repo)
  - [Run the tests](#run-the-tests)
- [Write your first Workflow](#write-your-first-workflow)
- [Sharpen your skills](#sharpen-your-skills)
- [Join the community](#join-the-community)
- [Intro to Workflow](#intro-to-workflow)

## Why Flowbuild?

### Reproducible

Each workflow created is the same and can be deployed to any running server.

### Independent

Each process runs independently from each other.

### Easy to explain and to reason about

The workflows are based of BPMN (Business Process Model and Notation), which represents
processes in a easy to follow manner. Furthermore, the business logic of the application
can be shown and expressed to people outside of the programming field, leading to better
communication.

## Install Flowbuild (Quick Install Guide)

### Install node

#### With node version manager (recommended)

There are multiple ways to install node. On macOS and Linux, the recommended way
is using `nvm` (node version manager). [Click here](https://github.com/nvm-sh/nvm) for official page. On Windows, you can run `nvm` using WSL (Windows Subsystem for Linux) or natively with the unofficial [nvm-windows](https://github.com/coreybutler/nvm-windows).

For alternative options, check [Installing node](INSTALL_NODE.html)

To install nvm, run the command below replacing the <NVM_VERSION> with the desired version of nvm. The newer, the better.

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/<NVM_VERSION>/install.sh | bash
```

By the time this document was written, the newer version of nvm was v0.35.3

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

To install the lastest LTS (Long Time Sevice) version, run the command:

```sh
nvm install --lts
```

If you get an error ```Command 'nvm' not found``` try to close and reopen the terminal session.

You can check your instalation with:

```sh
node -v
```

### Setup Docker

All Flowbuild projects are shippend within a docker image to provide a smooth integration along different enviroments. To install the latest docker version, visit the page [get docker](https://docs.docker.com/get-docker/).

### Clone the repo

To start a project, clone the latest stable version of Flowbuild engine from the [official repo](https://github.com/flow-build/engine)

```sh
git clone https://github.com/flow-build/engine
```

If you don't have ```git``` in your system, you can install with

```sh
sudo apt install git # Debian/Ubuntu systems
sudo yum install git # Red Hat/Fedora systems
```

Or download the installer from the [official page](https://git-scm.com/downloads)

### Run the tests

To check if the library is working, you may run the unit tests.

To setup the docker enviroment and run the tests, use the commands

```sh
docker-compose build
docker-compose up
```

## Write your first Workflow

To start a new project with Workflow, you first need to create a new node project.

Lets create a project named ```my-first-workflow```

```sh
mkdir my-first-workflow
cd my-first-workflow

npm init -y
```

A new file named ```package.json``` will be created inside the folder, showing that the folder contains a node module.

Then, we must install our workflow engine as a dependency

```sh
npm install @flowbuild/engine
```

The basic anatomy of a workflow project is:

<!-- ```js
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

``` -->
<script src="http://gist-it.appspot.com/https://github.com/mrgalopes/flowbuild-doc/blob/master/examples/anatomy_workflow.js">
</script>

## Sharpen your skills

You can find several exemples of different workflows under the ./examples folder in the repo (TODO: Explicar os exemplos disponíveis)

## Join the community

## Intro to Workflow
