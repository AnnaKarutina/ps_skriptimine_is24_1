$ht1 = @{"Name"="John","Joe", "Mary"; "DayWorked"=12, 20, 18}
$ht2 = @{"Name"="John","Joe", "Mary"; "SalaryPerDay"=100, 120, 150}

$salary = @()

$salary += $ht1.DayWorked[0] * $ht2.SalaryPerDay[0]
$salary += $ht1.DayWorked[1] * $ht2.SalaryPerDay[1]
$salary += $ht1.DayWorked[2] * $ht2.SalaryPerDay[2]


$ht3 = @{"Name"=$ht1.Name; "Salary"=$salary}

$ht3