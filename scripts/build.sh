#!/bin/sh

echo "mayo build tool"
echo "select build type (1-5)"
echo "1. stable"
echo "2. beta"
echo "3. nightly"
echo "4. debug"
echo "5. dev"
echo ""

read -r -p "enter your choice (1-5): " choice

case "$choice" in
  1)
    export MAYO_BUILD_TYPE=release
    echo "building Stable..."
    ;;
  2)
    export MAYO_BUILD_TYPE=beta
    echo "building Beta..."
    ;;
  3)
    export MAYO_BUILD_TYPE=nightly
    echo "building Nightly..."
    ;;
  4)
    export MAYO_BUILD_TYPE=debug
    echo "building Debug..."
    ;;
  5)
    export MAYO_BUILD_TYPE=internal
    echo "building Dev Build..."
    ;;
  *)
    echo "invalid choice. Exiting."
    exit 1
    ;;
esac

echo ""
echo "MAYO_BUILD_TYPE=$MAYO_BUILD_TYPE"
echo "Running: pnpm tauri build"
echo ""

pnpm tauri build

unset MAYO_BUILD_TYPE
