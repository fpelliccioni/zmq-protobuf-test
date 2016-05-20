#!/bin/bash

set -e
set -x
uname -s
echo ${TRAVIS_OS_NAME}
echo ${TRAVIS_BUILD_DIR}

if [[ "${TRAVIS_OS_NAME}" == "linux" ]]; then
  DEPS_DIR="${TRAVIS_BUILD_DIR}/deps"
  mkdir ${DEPS_DIR} && cd ${DEPS_DIR}
  CMAKE_URL="http://www.cmake.org/files/v3.3/cmake-3.3.2-Linux-x86_64.tar.gz"
  mkdir cmake && travis_retry wget --no-check-certificate --quiet -O - ${CMAKE_URL} | tar --strip-components=1 -xz -C cmake
  export PATH=${DEPS_DIR}/cmake/bin:${PATH}
  cd ..
fi

if [[ "$(uname -s)" == 'Darwin' ]]; then
    brew update || brew update
    brew outdated pyenv || brew upgrade pyenv
    brew install pyenv-virtualenv
    brew install cmake || true

    if which pyenv > /dev/null; then
        eval "$(pyenv init -)"
    fi

    pyenv install 2.7.10
    pyenv virtualenv 2.7.10 conan
    pyenv rehash
    pyenv activate conan
fi

pip install conan
# pip install conan_package_tools # It install conan too
# conan user