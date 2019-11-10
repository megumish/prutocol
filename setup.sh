#!/bin/sh

# ---- start setup rust ----

curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
echo ". $HOME/.cargo/env" >> $HOME/.bashrc

rustup component add rls rust-analysis rust-src

# ---- end setup rust ----
# ---- start build project ----

cd $HOME/workspace
cargo build
cargo test

# ---- end build project ----