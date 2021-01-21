function findMax($array){
    
    $max = $array[0]
    for($i=0; $i -lt $array.length; $i++){
        if($array[$i] -gt $max){
            $max = $array[$i]
        }
    }
    return $max
}

function main(){
    
    $array = 0, 6, 8, 9, 7, 6, 45, 456, 9, 787
    $max = findMax($array)
    write-host("The largest value in the array1 is: " + $max)
}

main