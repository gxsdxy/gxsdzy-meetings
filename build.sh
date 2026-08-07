#!/bin/bash
set -e

MDBOOK_VERSION="0.4.40"

echo "Downloading mdBook v${MDBOOK_VERSION}..."
curl -L "https://github.com/rust-lang/mdBook/releases/download/v${MDBOOK_VERSION}/mdbook-v${MDBOOK_VERSION}-x86_64-unknown-linux-gnu.tar.gz" | tar xz

echo "Building site..."
./mdbook build

echo "Build complete! Output in ./book/"
