set colorCode to ""

repeat while the length of colorCode is less than 6 or the length of colorCode greater than 7
    set colorCode to the text returned of (display dialog "Enter color code (format #RRGGBB):" default answer "#")
end repeat 

if character 1 of colorCode is equal to "#" then
    set colorCode to characters 1 thru 7 of colorCode
else
    set colorCode to "#" & characters 1 thru 6 of colorCode
end if

set inputFolder to choose folder with prompt "Select originals folder:"
set outputFolder to choose folder with prompt "Select output folder:"

set inputPath to "'" & (the POSIX path of inputFolder) & "'"
set outputPath to "'" & (the POSIX path of outputFolder) & "'"

do shell script "/usr/local/bin/mogrify -background " & "\"" & colorCode & "\"" & " -alpha remove -alpha off -path " & outputPath & "/ " & inputPath & "*.png"