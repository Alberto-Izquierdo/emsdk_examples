![Build](https://github.com/Alberto-Izquierdo/emsdk_examples/workflows/Build/badge.svg?branch=master)

# emsdk examples

I was not able to find a set of simple examples using wasm, so I made my own.

## Getting Started

This project is hosted in github pages [https://alberto-izquierdo.github.io/emsdk_examples/](https://alberto-izquierdo.github.io/emsdk_examples/).

You can run the examples locally by running the `setup.sh` script, `build_all.sh` and `deploy.sh`.

`setup.sh` just clones emsdk, installs it and sources the script to run `emcc` from the command line. If you want to set emsdk correctly, you should not use this script, although you can use it as a base.

`build_all.sh` builds the examples using `emcc` and copies the results in the `target` directory. Notice that you can compile the individual examples by running the appropiate `build.sh` script.

`deploy.sh` copies the contents of the `static` directory, and fills the `cpp/index.html` file with the examples generated.

To run your examples locally, you will need to run a web server, something as simple as running `python3 -m http.server` in the target directory should work.

### Prerequisites

No prerequisites, just run the scripts to setup your machine.
