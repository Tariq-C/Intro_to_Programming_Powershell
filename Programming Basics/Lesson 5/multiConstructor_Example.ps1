Class Suspect{
    [string] $firstName
    [string] $lastName
    [string] $shirtColour

    Suspect(){
        $this.firstName = "John"
        $this.lastName = "Doe"
        $this.shirtColour = "Unknown"
    }

    Suspect($fname, $lname){
        $this.firstName = $fname
        $this.lastName = $lname
        $this.shirtColour = "Unknown"
    }
    
    Suspect($fname, $lname, $sColour){
        $this.firstName = $fname
        $this.lastName = $lname
        $this.shirtColour = $sColour
    }    

    [string] ToString(){
        $str = "The suspect by name of " + $this.firstName + " " + $this.lastName + " was wearing a shirt of " + $this.shirtColour + " colour."
        return $str
    }
}

$s1 = [Suspect]::new()
$s2 = [Suspect]::new("Ptom", "Gneighbour")
$s3 = [Suspect]::new("Girean", "Gerrein", "Green")

$suspects = $s1, $s2, $s3

foreach($i in $suspects){
    write-host($i.ToString())
}
