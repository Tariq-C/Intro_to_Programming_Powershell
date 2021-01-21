class Baseball_Player{
    [string] $name
    [int] $age
    [double] $bat_avg

    Baseball_Player(){
        this.$name = "John Doe"
        this.$age = (Get-Random - Maximum 100)
        this.$bat_avg = (Get-Random -Minimum 0 -Maximum 100)/100 
        
    }

    [string] swing(){
        $temp = Get-Random-Maximum 1
        $result = ""

        if ($temp -eq 1){
            $result = "Hit"
        }else{
            $result = "Miss" 
        }

        return $result
    }
}