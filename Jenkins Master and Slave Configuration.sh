Jenkins Master and Slave Configuration:

Step1:

On Master Node:
# yum update -y
# yum install java-11* -y
# find /usr/lib/jvm/java-11* | head -n 3
# vi .bash_profile
JAVA_HOME=/usr/lib/jvm/java-11    //We are setting java home as environemnt variable 
$JAVA_HOME   //We need to add this line after PATH like

Note: Logout from root user nad again login as root user. It means we are taking restart to take effect.

# java -version
# echo $JAVA_HOME
/usr/lib/jvm/java-11  //If you see the output like this then you set env ariable correctly.

exactly looks like as below 
JAVA_HOME=/usr/lib/jvm/java-11

PATH=$PATH:$HOME/bin:$JAVA_HOME

export PATH
-------------------------------------------------------------------------------------------------------

Step2:

Now we need to download and install jenkins software on master node only
Here are the steps as below

Go to this site 
https://pkg.jenkins.io/redhat-stable/

# sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    
    Explaination for above: This command downloads the Jenkins repository configuration file from the specified URL (https://pkg.jenkins.io/redhat-stable/jenkins.repo) and saves it as /etc/yum.repos.d/jenkins.repo on your system. This configuration file specifies the details of the Jenkins repository that will be used by the yum package manager to install and update Jenkins.

# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

    Explaination for above: This command imports the Jenkins project's official GPG key to the system's RPM keyring. The GPG key is used to verify the integrity of the Jenkins packages that will be installed from the Jenkins repository.

# yum install jenkins
# service jenkins status
# service jenkins start

-------------------------------------------------------------------------------------------------------

Step3: On Master Node

Click on Manage Jenkins:
Click on Manage nodes and clouds:
Add New Node:
Go to configure of new slave node:

Remote root directory
  /opt/Jenkins    // We have created this workspace directory on slave node already
    Explaination for Remote root directory: An agent needs to have a directory dedicated to Jenkins. Specify the path to this directory on the agent. It is best to use an absolute path, such as /var/jenkins or c:\jenkins . This should be a path local to the agent machine. There is no need for this path to be visible from the controller.
                                            Agents do not maintain important data; all job configurations, build logs and artifacts are stored on the controller, so it would be possible to use a temporary directory as the agent root directory

Labels
  test
    Explaination for Labels: Labels (or tags) are used to group multiple agents into one logical group.
                             For example, if you have multiple Windows agents and you have a job that must run on Windows, then you could configure all your Windows agents to have the label windows, and then tie that job to this label.
                             This would ensure that your job runs on one of your Windows agents, but not on any agents without this label.

Under Launch Method:
Custom WorkDir path:
  /opt/Jenkins
  Explaination for Custom WorkDir path: If defined, a custom Remoting work directory will be used instead of the Agent Root Directory. This option has no environment variable resolution so far, it is recommended to use only absolute paths.

Use WebSocket:
  Explaination for Use Websocket: Use WebSocket to connect to the Jenkins master rather than the TCP port.


We need to connect slave node with master node:
Click on slave node go inside of that
you will see some commands and we need to run those command on slave node server. After that slave node will connect with our master node successfully.





On Slave Node:
# yum update -y
# yum install java-11* -y
# find /usr/lib/jvm/java-11* | head -n 3
# vi .bash_profile
JAVA_HOME=/usr/lib/jvm/java-11    //We are setting java home as environemnt variable 
$JAVA_HOME   //We need to add this line after PATH like

Note: Logout from root user nad again login as root user. It means we are taking restart to take effect.

# java -version
# echo $JAVA_HOME
/usr/lib/jvm/java-11  //If you see the output like this then you set env ariable correctly.

# cd /opt
# mkdir /opt/Jenkins  // We need to create one directory or workspace for Remote root directory

# chown -R ec2-user:ec2-user /opt/Jenkins





Free Swap Space and Free Temp Space Issue:

