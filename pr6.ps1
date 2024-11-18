$students = Import-Csv C:\Users\Anna\ps_skriptimine\ages.csv

$schools = @()
$names = @()
$schoolNames = @()


foreach($student in $students){
    $school = ""
    if([int32]$student.Age -ge 4 -and [int32]$student.Age -le 10){
        $school = "Junior"   
    } elseif ([int32]$student.Age -ge 11 -and [int32]$student.Age -le 17) {
        $school = "Senior"
    } 
    $schools += [PSCustomObject]@{"Name"=$student.Name; "School"=$school}
    
}

$schools | Select-Object -Property Name, School | Export-Csv -NoTypeInformation C:\Users\Anna\ps_skriptimine\schools.csv 