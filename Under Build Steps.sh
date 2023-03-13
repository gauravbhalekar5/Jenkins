Under Build Steps
Select Execute Shell

# Below line perform on Linux

# echo "Hello World"
# name="Gaurav Bhalekar"
# echo $name
# echo "My name is $name" 


Below Line perform on Bash Execute on Jenkins (Build Section)

First_Name="Gaurav"      
Last_Name="Bhalekar"
echo "My Name is $First_Name $Last_Name"
=================================================================================

# Below line perform on Linux

# vi test_job.sh
First_Name="Jenkins"
Last_Name="User"
echo "My Name is $First_Name $Last_Name"

# chmod +x test_job_sh
# ./test_job.sh


Below Line perform on Bash Execute on Jenkins (Build Section)

#!/bin/bash
First_Name="Jenkins"
Last_Name="User"
echo "My Name is $First_Name $Last_Name"  - Bash Execute on Jenkins
=================================================================================

# Below line perform on Linux

# cd /tmp/
# vi test_job.sh
echo "My Name is $First_Name $Last_Name"


Below Line perform on Bash Execute on Jenkins (Build Section)

We need to select buld Bash Execute on Jenkins
Step 1

/tmp/test_job.sh


This project is parameterised    - on Jenkins
Step 2
*Select String Parameter

Name
First_Name

Default Value
Gaurav

Description
Provide Your First Name

*Select String Parameter

Name
Last_Name

Default Value
Bhalekar

Description
Provide Your Last Name


Build this job with the help Build with Paramaete option on Jenkins

