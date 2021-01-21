# Change this value to either $true or $false to toggle the status of the preheat light
$preheatLight = $false


#No need to change things below
$preheatDone = $false

if($preheatLight -eq $preheatDone){
    Write-Host("Putting Cake in the oven")
}else{
    Write-Host("Oven is still preheating, please wait")
}
