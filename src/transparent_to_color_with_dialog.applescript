set colorCode to ""

repeat while the length of colorCode is not equal to 7
    set colorCode to the text returned of (display dialog "Enter color code (format #RRGGBB):" default answer "#")
    if character 1 of colorCode is not equal to "#" then
        set colorCode to "#" & colorCode
    end if
end repeat

set inputFolder to choose folder with prompt "Select originals folder:"

-- Try to find a way to do this without using finder
tell application "Finder" to set inputFolderParent to container of inputFolder as alias
set outputFolder to choose folder with prompt "Select output folder:" default location inputFolderParent

set inputPath to "'" & (the POSIX path of inputFolder) & "'"
set outputPath to "'" & (the POSIX path of outputFolder) & "'"

do shell script "/usr/local/bin/mogrify -background " & "\"" & colorCode &Â
                "\"" & " -alpha remove -alpha off -path " & outputPath & "/ " & inputPath & "*.png"