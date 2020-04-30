currentDir="`dirname \"$0\"`"
cd "$currentDir"

git checkout master
git pull

mkdir -p bin

osacompile -o /bin/background_colors.app /src/transparent_to_color_with_dialog.applescript

exit 0