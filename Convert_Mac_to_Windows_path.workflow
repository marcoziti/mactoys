// Convert Mac to Windows path
//
// file created per script Apple community user mdeniston posted in discussion thread.
//

on searchReplace(theText, SearchString, ReplaceString)
    set OldDelims to AppleScript's text item delimiters
    set AppleScript's text item delimiters to SearchString
    set newText to text items of theText
    set AppleScript's text item delimiters to ReplaceString
    set newText to newText as text
    set AppleScript's text item delimiters to OldDelims
    return newText
end searchReplace

on run {input, parameters}
    set myClip to the input
    set mytext to searchReplace(myClip, "<", "")
    set mytext to searchReplace(mytext, ">.", "")
    set mytext to searchReplace(mytext, ">", "")
    set mytext to searchReplace(mytext, "smb://", "\\\\")
    set findIt to "/"
    set replaceIt to "\\"
    set mylocation to searchReplace(mytext, findIt, replaceIt)
    return mylocation
end run

