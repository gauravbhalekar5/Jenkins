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

=============================================================================================

15/03/2023

Topics: 
Scheduled project
Cron Job
Upstream Job
Downstream Job
Views


Under Build Triggers:

   1. Build Periodically
      If you have a job that needs to be executed frequently, such as every week, every 2 hours, every month, or at a specific time like today evening or every minute, you can use the "Build Periodically" option in Jenkins. 
      By setting up a cron job, you can automate repetitive tasks and schedule them to run at specific times. This helps to save time and effort by reducing the need for manual intervention, while also ensuring that the tasks are executed consistently and reliably.
      
      

      a) with the help of cron job we are goinf to execute job or build job 
         MINUTE HOUR DOM MONTH DOW
           MINUTE	Minutes within the hour (0–59)
           HOUR	The hour of the day (0–23)
           DOM	The day of the month (1–31)
           MONTH	The month (1–12)
           DOW	The day of the week (0–7) where 0 and 7 are Sunday.


   2. Poll SCM
      Poll SCM is a feature in Jenkins that periodically checks for changes in the source code repository and triggers a build if any changes are detected.
      However, it's important to note that polling the repository too frequently can put unnecessary load on the system and slow down the build process. 
      So, it's important to use this feature judiciously and configure the polling interval appropriately based on the needs of your project.


Q. What is the difference between Build Periodically and Poll SCM?
    Build Periodically:
      This option is helpful when you want to schedule builds to run at specific times, even if there are no changes made in the source code.

    Poll SCM:
      This option is helpful when you only want to build your project when changes have been made in the source code, so you don't waste resources building unnecessarily when there have been no changes.
    In simple terms, Build Periodically schedules builds to run at specific intervals of time, while Poll SCM triggers builds only when changes are detected in the source code repository.

