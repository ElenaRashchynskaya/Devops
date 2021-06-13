$logDir="C:\Users\EKalosha\Documents\Devops\dbodemo-access.log"
$pattern1='Mozilla'
$pattern2='Chrome'
$pattern3='Opera'

$Matches1 = Select-String -Path $logDir -Pattern "$pattern1" -AllMatches
$Matches2 = Select-String -Path $logDir -Pattern "$pattern2" -AllMatches
$Matches3 = Select-String -Path $logDir -Pattern "$pattern3" -AllMatches

$hashTable = @{$pattern1 = $Matches1.Matches.Count}
$hashTable+= @{$pattern2 = $Matches2.Matches.Count}
$hashTable+= @{$pattern3 = $Matches3.Matches.Count}

$hashTable.GetEnumerator() | Sort-Object -Property Value -Descending

