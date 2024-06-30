#!/bin/bash

RUBY_PATH="/opt/cybertools/ruby"
RUBY_VERSION="3.3.3"
RUBY_SOURCE_PATH="$RUBY_PATH/ruby-$RUBY_VERSION"
RUBY_URL="https://cache.ruby-lang.org/pub/ruby/${RUBY_VERSION%.*}/ruby-$RUBY_VERSION.tar.gz"
RUBY_SOURCE_FILE="ruby-$RUBY_VERSION.tar.gz"

cd "$RUBY_PATH" || return
wget "$RUBY_URL"
rm -rf $RUBY_SOURCE_PATH
tar -xvf $RUBY_SOURCE_FILE
cd "$RUBY_SOURCE_PATH" || return
./configure --bindir=/opt/cybertools/bin --prefix="$RUBY_SOURCE_PATH"
make "$CYBER_MAKE"
make install