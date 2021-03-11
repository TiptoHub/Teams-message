set theMails to {"abc123@mail.com", "cba321@mail.com"}
repeat with a from 1 to length of theMails
	set currentMail to item a of theMails
	set theMessage to "This%20is%20example%20message"
	tell application "Safari"
		open location "https://teams.microsoft.com/l/chat/0/0?users=" & currentMail & "&message=" & theMessage
		activate
	end tell
	delay 3
	tell application "System Events" to key code 36
	delay 3
	tell application "System Events" to key code 36
end repeat
