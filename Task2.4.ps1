$logDir="C:\Users\EKalosha\Documents\Devops\dbodemo-access.log"
$pattern='/ibank/version.txt'

$Matches = Select-String -Path $logDir -Pattern "$pattern" -AllMatches
$Matches.Matches.Count