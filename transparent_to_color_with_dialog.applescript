set colorCode to the text returned of (display dialog "Enter color code (beginning with #):" default answer "#")

set inputFolder to choose folder with prompt "Select originals folder:"
set outputFolder to choose folder with prompt "Select output folder:"

set inputPath to "'" & (the POSIX path of inputFolder) & "'"
set outputPath to "'" & (the POSIX path of outputFolder) & "'"

do shell script "/usr/local/bin/mogrify -background " & "\"" & colorCode & "\"" & " -alpha remove -alpha off -path " & outputPath & "/ " & inputPath & "*.png"