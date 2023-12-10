# Syntax

# BEGIN { Actions }
# {ACTION } # Action for every line in a file
# END { Actions }

BEGIN {print "Name\tDesignation\tDepartment\tSalary";}
{print $2, "\t", $3, "\t", $4, "\t", $NF;}

END {print "Report generated\n--------------";} employee.txt
