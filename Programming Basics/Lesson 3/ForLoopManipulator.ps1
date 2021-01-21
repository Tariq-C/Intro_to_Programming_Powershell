#These are the values you can change to manipulate the for loop

$start = 0
$end = 10
$increment = 1


#This is the loop, If wanting to change the condition, change the -lt to another comparitor
$run = $start

for($run = $start; $run -lt $end; $run = $run + $increment){
   write-host($run)
}