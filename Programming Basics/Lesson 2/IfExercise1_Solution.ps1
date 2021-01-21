# Your goal for this exercise is to write an if statement or a series of if statements
# to meet the requirements listed below

# 1. Print out whether a number is even or odd
# 2. Print out whether there is a Canadian Bill or Coin that respresents the number
# 3. Print out if it is your favourite number
# 4. Print out the number of legs a group of cats of that number would have
# 5. Print out a person can hold 6 watermelons, how many trips would it take for a person to take home that many watermelons
# 6. Print out the value of y of the function y = x^2 - 3

# If the number is your favourite number don't print the others
# If the number is odd, only print the odd rules
# If the number is even only print the even rules
# If the number can be represented as a coin don't print 4, 5, or 6 


function statement1 ($number){

# Write an If statement to get the intended result
Write-Host("The number in question: " + $number)

# $number is where the number in question in stored
# write an if statement or series of if statements that analyse the number stored in $number

# Your code below here_________________________
$favouriteNumber = 13

if($number -eq $favouriteNumber){
    write-host("This is my favourite number")
}else{

    if($number%2 -eq 0){
        write-host("This number is even")

        if(($number -eq 10) -or ($number -eq 2) -or ($number -eq 20) -or ($number -eq 50) -or ($number -eq 100)){
            write-host("This number appears as a coin or bill in Canadian currency")

        }else{
            $value = $number * $number - 3
            write-host("The value of y in the equation x^2 -3 = y is : " + $value)
        }

    }else{
        write-host("This number is odd")

        # This rounds it to the nearest whole number, if you have half trips that is fine too
        [int]$value = $number/6
        if($number%6 -ne 0){
            $value++
        }
        write-host("This is not my favourite number")
        write-host("The number of trips it would take to take this number of watermelons home would be " + $value)

    }


}


# Your code above here_________________________


}


# This is where we list the numbers that we want to test through your code. If you want to try your own numbers, please replace one of the numbers with your own
statement1 1
statement1 7
statement1 9
statement1 13
statement1 20
statement1 102
