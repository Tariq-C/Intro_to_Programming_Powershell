#cr1 - Cross Roads 1
function cr1(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, East, and South")

    # Ask the user for their choice in direction. (North-1 East-2 South-3 West-4) then save their choice for later comparison


    # Take their choice and depending on the number they chose, print out where they walk and then call the next function
    

}

#cr2 - Cross Roads 2
function cr2(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, South, and West")

    # Ask the user for their choice in direction. (North-1 East-2 South-3 West-4) then save their choice for later comparison


    # Take their choice and depending on the number they chose, print out where they walk and then call the next function
}

#cr3 - Cross Roads 3
function cr3(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, East, South, and West")
    
    # Ask the user for their choice in direction. (North-1 East-2 South-3 West-4) then save their choice for later comparison


    # Take their choice and depending on the number they chose, print out where they walk and then call the next function
}

#cr4 - Cross Roads 4
function cr4(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, East, South, and West")
    
    # Ask the user for their choice in direction. (North-1 East-2 South-3 West-4) then save their choice for later comparison


    # Take their choice and depending on the number they chose, print out where they walk and then call the next function
}

#cr5 - Cross Roads 5
function cr5(){
    Write-Host("You have reached a crossroads")
    Write-Host("There are three paths, North, West, and East")
    
    # Ask the user for their choice in direction. (North-1 East-2 South-3 West-4) then save their choice for later comparison


    # Take their choice and depending on the number they chose, print out where they walk and then call the next function
}


# This is the start of the maze it only has one option and tells the person to go to the first cross roads
function starting(){
    Write-Host("You have entered the Maze going East")
    Write-Host("You instantly turn South and walk 3 units")
    cr1

}

# This is the end of the maze, it only has one option and exits the script
function ending(){
    Write-Host("You have escaped the maze Congratulations!")
    exit(-1)
}

#de1 - Dead End 1
function de1(){
    Write-Host("You have reached a dead end.")

    # You may choose to take user input or not, the in the end the user must return back to the last crossroads
    
}

#de2 - Dead End 2
function de2(){
    Write-Host("You have reached a dead end.")

    # You may choose to take user input or not, the in the end the user must return back to the last crossroads
}

#de3 - Dead End 3
function de3(){
    Write-Host("You have reached a dead end.")

    # You may choose to take user input or not, the in the end the user must return back to the last crossroads
}

#de4 - Dead End 4
function de4(){
    Write-Host("You have reached a dead end.")
    
    # You may choose to take user input or not, the in the end the user must return back to the last crossroads
}

#de5 - Dead End 5
function de5(){
    Write-Host("You have reached a dead end.")
   
   # You may choose to take user input or not, the in the end the user must return back to the last crossroads
}


# This is the first line of code that runs. Normally when creating complex functions, this will only have the line "main"
# and a function titled main would have the 'main' code. This just helps keep complex code easy to understand. 
starting