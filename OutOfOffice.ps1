#The two scripts below will set a out of office reply for a user. This script is for a local exchange server, not O365. O365 will require a connection to the O365 server prior to these scripts.
#The first line will set an OOF between set dates and times. 

set-mailboxautoreplyconfiguration -identity "User Name" -autoreplstate scheduled -starttime "6/7/2021 12:00am" -endtime "6/11/2021 11:59pm" -internalmessage "i will be on PTO June 7th through June 11th" -externalmessage "I will be on PTO June 7th through June 11th".


#The script below will set an OOF with no ending date.

Set-MailboxAutoReplyConfiguration -Identity "User Name" -AutoReplyState Enabled -InternalMessage "I will be on PTO until further notice" -ExternalMessage "I will be on PTO until further notice"
