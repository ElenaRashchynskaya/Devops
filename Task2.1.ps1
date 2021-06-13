$logDir="C:\Users\EKalosha\Documents\Devops\dbodemo-access.log"
$pattern='\d{1,3}(\.\d{1,3}){3}'

$Matches = Select-String -Path $logDir -Pattern "$pattern"
$temp = ($Matches.Matches.Value | group | % { $h = @{} } { $h[$_.Name] = $_.Count } { $h }).GetEnumerator()
$temp | Sort-Object -Property Value -Descending
