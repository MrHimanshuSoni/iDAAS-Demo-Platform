# iDAAS-Demo-Platform
Complete Platform Demo: HL7, FHIR, Third Party, Some DREAM Components and Data Distribution. The intent of this 
solution is to provide a quick and simple platform. 

This platform is designed to show the power of middleware across the healthcare industry. While this platform is able to
run as long as you have Java installed we have included the release of Kafka (also known as AMQ-Streams). It can be 
found in the platform-addons directory. We have also included all the scripts that will create the Kafka topics within
platform-scripts/AMQ-Streams.

** - If you want test data you can find sample data within the testdata directory when the source code is downloaded locally.

1. Unzip the zip file. I have unzipped it without changing the name of the directory into my home directory within a 
directory I created named RedHatTech.
2. You will need to change the default directory in the scripts (check the start-solutions script as well) but can run the scripts to either create, list or delete the 
Kafka topics.
3. To build and create a jar you can run the build_solution script, it will build and generate an updated jar file with 
any changes you might have added
4. Run the start_solution script in the platform-scripts directory. 


