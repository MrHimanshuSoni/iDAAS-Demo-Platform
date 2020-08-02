# Change Directory to solution on local machine
echo $PWD
echo "iDAAS - Demo Platform"
cd $PWD
cd ../

/usr/local/bin/mvn clean install
echo "Maven Build Completed"
/usr/local/bin/mvn package
echo "Maven Release Completed"
cd target
cp idaas-*.jar idaas-demoplatform.jar
echo "Copied Release Specific Version to General version"
