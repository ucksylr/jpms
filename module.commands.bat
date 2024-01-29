@ECHO OFF
ECHO "List available Java modules."
java --list-modules

: -p -> --module-path
ECHO "List available Java modules with custom module."
java -p mods --list-modules

: -m -> --module
ECHO "Describe module with java command."
java --show-module-resolution -p mods --module com.service.consumer/model.Main

: -f -> --file
ECHO "Describe module with jar command."
jar -f mods/com.service.example.jar --describe-module

: for summary use -s or -summary
: for list unsupported apis use -jdkinternals or --jdk-internals
ECHO "Show dependencies."
jdeps -jdkinternals mods/com.service.example.jar

ECHO "JMOD commands. It should be use when jar command can not use"
jmod create jmods --class-path mods/com.service.consumer
jmod describe jmods
jlink --launcher launcher=com.service.consumer/model.Main -p mods --add-modules com.service.consumer --output moduleExample