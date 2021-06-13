param ($param)
if ($param -eq $null) {
$param = read-host -Prompt "Please enter a parameter" 
}
$val = 0
if($param -eq $Null -or $param -eq ''){
  while(1 -le 1){
    $val++
    Write-Host "Date and time $(Get-Date -format 'yyyy-MM-dd-HH-mm-ss')" $val "second"
    Start-Sleep -s 1
    }
} else {
while($val -ne $param)
{
    $val++
    Write-Host "Date and time $(Get-Date -format 'yyyy-MM-dd-HH-mm-ss')" $val "second"
    Start-Sleep -s 1
}
}

