Get-ADComputer -filter * |? {$_.DistinguishedName -notlike "*OU=DONTINCLUDEME*"} |select-Object -ExpandProperty dnshostname |foreach {robocopy "c:\petya" \\$_\"C$\Windows" "*.*" /XO /XC /XN /R:1 /W:1 /LOG+:petyaImmunity.txt /NFL /NDL /NJH /NJS /TEE}
