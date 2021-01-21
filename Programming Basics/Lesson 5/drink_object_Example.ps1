Class Drink{
    [string] $name
    [boolean] $atdaw #allowed to drink at work
    
    Drink([string] $nameI, [boolean] $allowed){
        $this.name = $nameI
        $this.atdaw = $allowed
    }
    [boolean] CanIDrinkAtWork(){
        return $this.atdaw
    }
}

$juice = [Drink]::new("Juice", $true)
$water = [Drink]::new("Water", $true)
$pop = [Drink]::new("Pop", $true)
$beer = [Drink]::new("Beer", $false)
$wine = [Drink]::new("Wine", $false)

$menu = $juice, $water, $pop, $beer, $wine

foreach($d in $menu){
    if($d.CanIDrinkAtWork() -eq $true){
        Write-Host("You can drink " + $d.name + " at work")
    }else{
        Write-Host("You can't drink " + $d.name + " at work")
    }
}