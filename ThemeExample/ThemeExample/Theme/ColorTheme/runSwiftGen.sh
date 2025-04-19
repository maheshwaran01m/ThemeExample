#!/bin/zsh

echo "runSwiftGen.sh - Running SwiftGen"

cd ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftGen

# This is used to generate strings, assets, colors using swiftGen
/usr/bin/xcrun --sdk macosx swift run swiftgen config run --config $SRCROOT/ThemeExample/swiftgen.yml

echo "runSwiftGen.sh - Done"
