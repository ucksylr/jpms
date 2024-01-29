@ECHO OFF
ECHO "STEP 1: Compile."
: -p -> --module-path
: -d : directory
: javac -p moduleFolderName -d directory classesToCompileIncludingModuleInfo
ECHO "Interface is compiling."
javac -p mods -d mods/com.service.interfaces com.service.interfaces/src/algorithms/*.java com.service.interfaces/src/module-info.java
ECHO "Locator is compiling."
javac -p mods -d mods/com.service.locator com.service.locator/src/services/*.java com.service.locator/src/module-info.java
ECHO "Provider 1 is compiling."
javac -p mods -d mods/com.service.provider com.service.provider/src/impls/*.java com.service.provider/src/module-info.java
ECHO "Provider 2 is compiling."
javac -p mods -d mods/com.service.provider2 com.service.provider2/src/impls2/*.java com.service.provider2/src/module-info.java
ECHO "Consumer is compiling."
javac -p mods -d mods/com.service.consumer com.service.consumer/src/model/*.java com.service.consumer/src/module-info.java
ECHO "Done!"

@ECHO OFF
: java --module-path moduleFolderName --module moduleName/package.className
ECHO "STEP 2: Run."
java --module-path mods --module com.service.consumer/model.Main
ECHO "Done!"

@ECHO OFF
ECHO "STEP 3: Package."
: -cvf -> create verbose file
: -C -> directory containing files
: jar -cvf outputFolder/outputName.jar -C inputFolder includeFiles
jar -cvf mods/com.service.example.jar -C mods/ .
ECHO "Done."

@ECHO OFF
ECHO "STEP 4: Run."
java -p mods -m com.service.consumer/model.Main
ECHO "Done."





