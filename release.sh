#!/bin/bash

function build ()
{
    echo "Sourcing $1"
    source "$1/bin/activate"
    python --version
    python -m pip install wheel
    python setup.py bdist_wheel --plat-name=macosx_11_0_universal2
    deactivate
}

build venv38
build venv39
build venv310