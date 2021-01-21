function cr1(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, East, and South")
    $choice = Read-Host("Which way do you choose? (North-1 East-2 South-3 West-4)")

    if($choice -eq "1"){
        Write-Host("You walk 3 units North to the Entrance of the Maze.")
        starting
    }elseif($choice -eq "2"){
        Write-Host("You walk 1 unit East and turn North")
        Write-Host("You walk 2 units North and turn East")
        Write-Host("You walk 3 units East")
        cr2
    }elseif($choice -eq "3"){
        Write-Host("You walk 1 unit South and turn East")
        Write-Host("You walk 2 units East and turn North")
        Write-Host("You walk 2 units North")
        de1    
    }else{
        Write-Host("Invalid Entry")
        cr1
    }

}

function cr2(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, South, and West")
    $choice = Read-Host("Which way do you choose? (North-1 East-2 South-3 West-4)")

    if($choice -eq "1"){
        Write-Host("You walk 2 units North")
        cr3
    }
    elseif($choice -eq "3"){
        Write-Host("You walk 3 units South and turn East")
        Write-Host("You walk 2 units East")
        cr5
    }
    elseif($choice -eq "4"){
        Write-Host("You walk 2 units West and turn South")
        Write-Host("You walk 2 units South and turn West")
        Write-Host("You walk 1 unit West")
        cr1
    }
    else{
        Write-Host("Invalid Entry")
        cr2
    }
}

function cr3(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, East, South, and West")
    $choice = Read-Host("Which way do you choose? (North-1 East-2 South-3 West-4)")

    if($choice -eq "2"){
        Write-Host("You walk 1 unit East and turn South")
        Write-Host("You walk 4 units South")
        de2
    }
    elseif($choice -eq "3"){
        Write-Host("You walk 2 units South")
        cr2
    }
    elseif($choice -eq "4"){
        Write-Host("You walk 2 units West")
        cr4
    }
    else{
        Write-Host("Invalid Entry")
        cr3
    }
}

function cr4(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, East, South, and West")
    $choice = Read-Host("Which way do you choose? (North-1 East-2 South-3 West-4)")

    if($choice -eq "2"){
        Write-Host("You walk 2 units East")
        cr3
    }
    elseif($choice -eq "3"){
        Write-Host("You walk 1 unit South and turn East")
        Write-Host("You walk 1 unit East")
        de4
    }
    elseif($choice -eq "4"){
        Write-Host("You walk 1 unit West")
        de3
    }
    else{
        Write-Host("Invalid Entry")
        cr4
    }
}

function cr5(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, West, and East")
    $choice = Read-Host("Which way do you choose? (North-1 East-2 South-3 West-4)")

    if($choice -eq "1"){
        Write-Host("You walk 5 units North and turn East")
        Write-Host("You walk 1 unit East and turn South")
        Write-Host("You walk 3 units South")
        de5
    }
    elseif($choice -eq "2"){
        Write-Host("You walk 1 unit East and turn North")
        Write-Host("You walk 1 unit North")
        ending
    }
    elseif($choice -eq "4"){
        Write-Host("You walk 2 units West and turn North")
        Write-Host("You walk 3 units North")
        cr2
    }
    else{
        Write-Host("Invalid Entry")
        cr5
    }
}

function starting(){
    Write-Host("You have entered the Maze going East")
    Write-Host("You instantly turn South and walk 3 units")
    cr1
}

function ending(){
    Write-Host("You have escaped the maze Congratulations!")
    exit(-1)
}

function de1(){
    Write-Host("You have reached a dead end.")
    $choice = Read-Host("Turn Back. (1 - Turn Back)")
    if($choice -eq "1"){
        Write-Host("You walk 2 units South and turn West")
        Write-Host("You walk 2 units West and turn North")
        Write-Host("You walk 1 unit North")
        cr1    
    }else{
        Write-Host("Invalid Entry")
        de1
    }
}

function de2(){
    Write-Host("You have reached a dead end.")
    $choice = Read-Host("Turn Back. (1 - Turn Back)")
    if($choice -eq "1"){
       Write-Host("You walk 4 units North and turn West")
       Write-Host("You walk 1 unit West")
       cr3
    }else{
        Write-Host("Invalid Entry")
        de2
    }
}

function de3(){
    Write-Host("You have reached a dead end.")
    $choice = Read-Host("Turn Back. (1 - Turn Back)")
    if($choice -eq "1"){
       Write-Host("You walk 1 unit East")
       cr4
    }else{
        Write-Host("Invalid Entry")
        de3
    }
}

function de4(){
    Write-Host("You have reached a dead end.")
    $choice = Read-Host("Turn Back. (1 - Turn Back)")
    if($choice -eq "1"){
       Write-Host("You walk 1 unit West and turn North")
       Write-Host("You walk 1 unit North")
       cr4
    }else{
        Write-Host("Invalid Entry")
        de4
    }
}

function de5(){
    Write-Host("You have reached a dead end.")
    $choice = Read-Host("Turn Back. (1 - Turn Back)")
    if($choice -eq "1"){
       Write-Host("You walk 3 units North and turn West")
       Write-Host("You walk 1 unit West and turn South")
       Write-Host("You walk 5 units South")
       cr5
    }else{
        Write-Host("Invalid Entry")
        de5
    }
}

starting