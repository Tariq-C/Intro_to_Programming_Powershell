class Course{

    $name
    $classSize
    $numStudents

    Course($n, $s){
        $this.name = $n
        $this.classSize = $s
        $this.numStudents= 0
    }

    addStudent([Student]$student){
        
        if($this.numStudents -lt $this.classSize){

            $this.numStudents++
            $student.addCourse($this.name)

            write-host($student.name + " has been added to " + $this.name)

        }else{

            write-host("There is no more room in " + $this.name + " for " + $student.name)
        
        }

    }
}

class Student{
    [string] $name
    $courseList

    Student ([string] $n){
        $this.name = $n
        $this.courseList = @()
        
    }

    addCourse($course){
        $this.courseList += $course
    }
}


$studenta = [Student]::new("Richard")
$studentb = [Student]::new("Not Richard")
$math101 = [Course]::new("math101", 1)


$math101.addStudent($studenta)
$math101.addStudent($studentb)