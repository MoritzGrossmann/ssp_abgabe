!#/bin/bash
echo "---------------Prepare Glassfish---------------"
echo "Make Backup of domain.xml"
mv /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml.bak
echo "Done"
echo "copy domain.xml to glassfish server"
cp /home/student/kundenauftrag/domain.xml /home/student/glassfish4/glassfish/domains/domain1/config/domain.xml
echo "Done"
echo "copy mysql-connector into glassfish lib"
cp /home/student/kundenauftrag/mysql-connector-java-5.1.21.jar /home/student/glassfish4/glassfish/lib/mysql-connector-java-5.1.21.jar
echo "Done"
echo "Make Backup of org.eclipse.persistence.moxy.jar with Bugs"
mv /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar.bak
echo "Done"
echo "copy new org.eclipse.persistence.moxy.jar into glassfish modules"
cp /home/student/kundenauftrag/org.eclipse.persistence.moxy.jar /home/student/glassfish4/glassfish/modules/org.eclipse.persistence.moxy.jar
echo "Done"
echo "----------------Create Database----------------"
echo "execute jar for creating Database and Databaseuser"
java -jar /home/student/kundenauftrag/create-database.jar /home/student/kundenauftrag/customer.xml
