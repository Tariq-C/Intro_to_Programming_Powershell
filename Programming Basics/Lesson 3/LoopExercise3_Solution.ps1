# This is a loop exercise
# This is exercise 3 of 3
# You will need to make loops that will print the same output as the print statement. 
# For each print statement you will need to make one while loop and one for loop

#Statement #3
Write-Host("Expected Result:")
Write-Host("...-..--.---")


# Statement #3 While loop version
Write-Host("While Loop Result:")
$a = 3
$answer1w = ""

# You can make as many variables as you need here
$b = 3

# Leave the condition on this while loop as is
while($a -gt 0){
    

    # Write your code here
    # The hard way
    $b = $a

    # Loop three times
    while ($b -gt 0){
        # Add a dot to the 
        $answer1w = $answer1w + "."

        $b--
    }

    $b = 0
    while ($b -gt $a){
        $answer1w = $answer1w + "-"

        $b--
    }

    # Do not change this line
    $a--
}

Write-Host($answer1w)

# Statement #3 For Loop Version
Write-Host("For Loop Result:")
$a = 3
$answer1f = ""

# You can make an many variables as you need here

# Do not edit this loop
for($i=0; $i -lt $a; $i++){
    
    #Write your code here
    
    # The hard way
    for($j=$i; $j -lt 3; $j++){
        $answer1f = $answer1f + "."
    }
    for($j=-1; $j -lt $i; $j++){
        $answer1f = $answer1f + "-"
    }


}

Write-Host ($answer1f)