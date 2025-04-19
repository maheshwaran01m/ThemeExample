# Theme Example

This Project is about the Code generation tools using SPM Plugin and SwiftGen

## Table of Contents:

- Swift Package Manager Plugin
   - Command Plugin
      - CommandPluginExample
   - Build Tool Plugin
     - BuildPluginExample (Image Asset Generation)
     - JsonBuildExample (Json to Color Asset Generation)
 
-  SwiftGen
    - Xcode Project
      - ThemeExample
    - SPM Package
       - ColorExample

----------------------------------------------------------------------------------------------------------------

## Swift Package Manager Plugin

#### Build Tool Plugin

Package.swift
```
let package = Package(
  name: "BuildPluginExample",
  platforms: [.iOS(.v16)],
  products: [
    .library(name: "BuildPluginExample", targets: ["BuildPluginExample"]),
  ],
  targets: [
    .target(name: "BuildPluginExample", dependencies: [], plugins: ["AssetConstants"]),
    .executableTarget(name: "AssetConstantsExec"),
    .plugin(name: "AssetConstants", capability: .buildTool(), dependencies: ["AssetConstantsExec"]),
  ]
)

```

#### Command Plugin

Package.swift
```
let package = Package(
  name: "CommandPluginExample",
  products: [
    .library(name: "CommandPluginExample", targets: ["CommandPluginExample"]),
  ],
  targets: [
    .target(name: "CommandPluginExample"),
    .plugin(
      name: "GeneratePlugin",
      capability: .command(
        intent: .custom(verb: "regenerate-contributors-list",
                        description: "Generates the CONTRIBUTORS.txt file based on Git logs"),
        permissions: [
          .writeToPackageDirectory(reason: "This command write the new CONTRIBUTORS.txt to the source root.")
        ]
      )),
  ]
)

```
Steps to Run the Package to create generated Files

 - Quit and Reopen Xcode
 - Right Click CommandPluginExample
 
 - `GeneratePlugin` Option will show in the menus
 - Click
 - Select `GeneratePlugin` Option
 - Click Run
 - Allow permission
 
 - It will generate `CONTRIBUTORS` text file
 
----------------------------------------------------------------------------------------------------------------


## SwiftGen

 - https://github.com/SwiftGen/SwiftGen
 
### To Download Figma Colors to Json

* To Download Figma Colors to Json

  - Add Import/Export Plugins to Figma
  - Use any free color theme from figma, or else use the below link to download json using plugins
  - "https://www.figma.com/design/kzei4HZZdA1Tk9EeHTvUrV/Material-3-Design-Kit--Community-?node-id=49823-12154&t=wCgoSm2ah5vOBcDN-0"


### To Intergate SwiftGen with Project

* Create a new project


* Add SwiftGen in Package Dependencies
 - https://github.com/SwiftGen/SwiftGen.git
 - Used version 6.6.2


* Create swifgen.yml file in project, [Refer Link](https://github.com/SwiftGen/SwiftGen)


* Create SwiftGen Run Script file
   
   - runSwiftGen.sh
     
   ```
      #!/bin/zsh

      echo "runSwiftGen.sh - Running SwiftGen"

      cd ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftGen

      # This is used to generate strings, assets, colors using swiftGen
      /usr/bin/xcrun --sdk macosx swift run swiftgen config run --config $SRCROOT/Project/swiftgen.yml

      echo "runSwiftGen.sh - Done"
   ```
   
* Create SwiftGen Run Script

   - Project -> Target -> + -> New Run Script Phase
   
   ``` @swift
    echo "Build Phase - Begin SwiftGen"
      ./Project/_urlFolderPath_/runSwiftGen.sh
    echo "Build Phase - End SwiftGen"
   ```
   - Uncheck `Based on dependency analysis`
   
* Remove SwiftGen from Link Binary With Libraries
 
     - Project -> Target -> Build Phases -> Link Binary With Libraries
     - SwiftGenCli, SwiftGen libraries
     
  `Note: Otherwise project won't compile from xcode 15 or later`
  
* Disable User Script Sandboxing
 
     - Project -> Target -> Build Settings -> User Script Sandboxing
     - No
     
  `Note: Otherwise swiftGen won't generate the file from xcode 15 or later`
     
     
     
----------------------------------------------------------------------------------------------------------------



### To Intergate SwiftGenPlugin with Swift Package Manager


* Create Package using Xcode

 - File -> New -> Package

* Add swiftGen dependencies in Package.swift file
 
 Link: `https://github.com/SwiftGen/SwiftGenPlugin.git`
 
 ``` @swift
 
        let package = Package(
        name: "_YourPackageName_",
        platforms: [.iOS(.v16)],
        products: [
          .library(name: "_YourPackageName_", targets: ["_YourPackageName_"]),
        ],
        dependencies: [
          .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.0")
        ],
        targets: [
          .target(
            name: "ColorExample",
            plugins: [.plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")]
          )
        ]
       )

 ```

* To Generate ColorCode, Just Build the project or (Command + B)

* Default DerivedData Folder

swiftgen.YML File

``` @swift
 colors:
  inputs: Sources/Theme/ColorTheme/colorCodes.json
  outputs:
    templateName: swift5
    params:
      forceProvidesNamespaces: true
      accessLevel: public
      enumName: AppColor
    output: ${DERIVED_SOURCES_DIR}/AppColor.swift

```


* Custom Output folder Location

- To Generate SwiftCode with Custom Path Location requires addition step

swiftgen.YML File

``` 
 colors:
  inputs: Sources/Theme/ColorTheme/colorCodes.json
  outputs:
    templateName: swift5
    params:
      forceProvidesNamespaces: true
      accessLevel: public
      enumName: AppColor
    output: Sources/Theme/ColorTheme/AppColor.swift

```
* Run this command in Terminal (Project Root directory)

 - swift package --allow-writing-to-package-directory generate-code-for-resources

------------------------------------------------------------------------------------------------------------
