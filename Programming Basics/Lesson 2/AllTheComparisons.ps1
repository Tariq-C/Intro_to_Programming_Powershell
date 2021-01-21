# These are values to be compared

$value1 = 1
$value2 = 2


# These are every possible comparison

# if they equal eachother
if($value1 -eq $value2){
    Write-Host("The values are equal")
}

# if the lefthand side is greater than the righthand side
if($value1 -gt $value2){
    Write-Host("value1 is greater than value2")
}

# if the lefthand side is greater than or equal to the righthand side
if($value1 -ge $value2){
    Write-Host("value1 is greater than or equal to value2")
}

# if the lefthand side is less than the righthand side
if($value1 -lt $value2){
    Write-Host("value1 is less than value2")
}

# if the lefthand side is less than or equal to the righthand side
if($value1 -le $value2){
    Write-Host("value1 is less than or equal to value2")
}

# if they are not equal to eachother
if($value1 -ne $value2){
    Write-Host("The values are not equal")
}

