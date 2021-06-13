$logDir="C:\Users\EKalosha\Documents\Devops\dbodemo-access.log"
$pattern='HTTPS?\/1.0"\s\d{3}'

$Matches = Select-String -Path $logDir -Pattern "$pattern" -AllMatches
$string = $Matches.Matches.Value
foreach ($item in $string) {
   $item.Substring(10)
 }
 
