Maven

Step1:
# which java
# find /usr/lib/jvm/java-11* | head -n 3

Copy the java installed path in .bash_profile like we need to set environment variable.

# ls -al
# vi .bash_profile
JAVA_HOME=/usr/lib/jvm/java-11    //We are setting java home as environemnt variable 
$JAVA_HOME   //We need to add this line after PATH like

Note: Logout from root user nad again login as root user. It means we are taking restart to take effect.

# java -version
# echo $JAVA_HOME
/usr/lib/jvm/java-11  //If you see the output like this then you set env ariable correctly.


Step2:
We need to download maven package from Apache Maven site
Go to /opt

# cd /opt
# wget https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz
# tar -xvzf apache-maven-3.9.1-bin.tar.gz  //We need to extract the maven package
# mv apache-maven-3.9.1 maven  //We are renaming package name but this is optional.

Now we need to setup maven path in environment variable
# vi .bash_profile
M2_HOME=/opt/maven
M2=/opt/maven/bin

:$M2_HOME:$M2

Note: Logout from root user nad again login as root user. It means we are taking restart to take effect.

# mvn -version
# echo $M2_HOME
# echo $M2

Step3: 

# mvn archetype:generate | grep maven-archetype-webapp
