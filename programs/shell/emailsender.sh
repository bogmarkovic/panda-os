$EmailFrom = “markovicb599@gmail.com”

$EmailTo = “andijovic@gmail.com”

$Subject = “Test”

$Body = “Pokusavam preko mog operativnog sistema da posaljem  ovo.Javi mi ako uspe”

$SMTPServer = “gmail.com”

$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPClient.EnableSsl = $true

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“gmail.com”, “gmail.com”);
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)