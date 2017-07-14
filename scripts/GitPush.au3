; ¬ведите им€ пользовател€ и пароль дл€ вашей системы.
$sDomen = "Domen"
$sUserName = "stepanov_ao"
$sPassword = ""

$sCommand = "cmd.exe /c git push -u origin --all -v"

$sWorkingDir = $CmdLine[1]
$sOurFile = $CmdLine[2]

$sOurFile = """" & $sOurFile & """"
$sCommand = $sCommand & " > " & $sOurFile & " 2>&1"

$iReturn = RunAsWait($sUserName, $sDomen, $sPassword, 1, $sCommand, $sWorkingDir)

Exit( $iReturn )

