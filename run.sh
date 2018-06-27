!#/bin/bash
echo "---------------Prepare Glassfish---------------"
echo "Make Backup of domain.xml"
mv /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml.bak
echo "Done"
echo "copy domain.xml to glassfish server"
cp domain.xml /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml
echo "Done"
echo "copy mysql-connector into glassfish lib"
cp mysql-connector-java-5.1.21.jar /home/student/glassfish4/glassfish/lib/mysql-connector-java-5.1.21.jar
echo "Done"
echo "Make Backup of org.eclipse.persistence.moxy.jar with Bugs"
mv /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar.bak
echo "Done"
echo "copy new org.eclipse.persistence.moxy.jar into glassfish modules"
cp org.eclipse.persistence.moxy.jar /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar
echo "Done"
echo "----------------Create Database----------------"
echo "execute jar for creating Database and Databaseuser"
java -jar create-database.jar customer.xml
