$EmailFrom = “”

$EmailTo = “”

$Subject = “”

$Body = “”

$SMTPServer = “”

$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPClient.EnableSsl = $true

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“”, “”);
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)