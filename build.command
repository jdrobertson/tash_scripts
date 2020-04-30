currentDir="`dirname \"$0\"`"

mkdir -p $currentDir/bin

osacompile -o "$currentDir/bin/background_colors.app" "$currentDir/src/transparent_to_color_with_dialog.applescript"

cp -r "$currentDir/bin/." "$currentDir/.."

exit 0