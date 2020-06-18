# Installation methods for NodeJS

#### With node version manager (recommended)

There are multiple ways to install node. On macOS and Linux, the recommended way
is using `nvm` (node version manager). [Click here](https://github.com/nvm-sh/nvm) for official page. On Windows, you can run `nvm` using WSL (Windows Subsystem for Linux) or natively with the unofficial [nvm-windows](https://github.com/coreybutler/nvm-windows).

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

## With package manager (Linux)

You can find the repo of all node versions in the [offical list](https://github.com/nodesource/distributions/blob/master/README.md).

To install node in a Debian/Ubuntu based system, run the command replacing <NODE_VERSION> with the desired node version

```sh
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_<NODE_VERSION>.x | sudo -E bash -
sudo apt-get install -y nodejs

# Using Debian, as root
curl -sL https://deb.nodesource.com/setup_<NODE_VERSION>.x | bash -
apt-get install -y nodejs
```

By the time this doc was written, the latest LTS version is v14

```sh
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Using Debian, as root
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs
```

For Red Hat Enterprise/Fedora based systems, the command is very similar

```sh
# As root
curl -sL https://rpm.nodesource.com/setup_<NODE_VERSION>.x | bash -

# No root privileges
curl -sL https://rpm.nodesource.com/setup_<NODE_VERSION>.x | sudo bash -
```

To install the v14 LTS

```sh
# As root
curl -sL https://rpm.nodesource.com/setup_14.x | bash -

# No root privileges
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
```

Once installed, you can check if it works by running:

```sh
node -v
```

## With node installer (Windows/Mac)

You can install node with the [official installers](https://nodejs.org/en/). With this method you cannot specify or control which version of node will be installed. This will not be a problem with Flowbuild, but some projects may rely on deprecated features of LTS node versions.

Just download and run the installer for Windows or macOS.

After installed, you can check the current version with:

```sh
node -v
```