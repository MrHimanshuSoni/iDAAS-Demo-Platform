kafkaDir=$HOME'/RedHatTech/kafka_2.12-2.5.0.redhat-00003'
echo "Directory: "$kafkaDir
cd $kafkaDir

## FHIR Third Party Server Integration
## Enterprise Level Topics by Message Trigger
## Application: Integration with Partner FHIR Server
bin/kafka-topics.sh --delete --topic mctn_mms_adt &
## Facility By Application by Message Trigger
## Facility: MCTN
## Application: MMS
bin/kafka-topics.sh --delete--topic mctn_adt &
## Enterprise By Application by Message Trigger
## Facility: MCTN
## Application: MMS
bin/kafka-topics.sh --delete --topic mms_adt &
## HL7
## Enterprise by Message Trigger
## Application: MMS
bin/kafka-topics.sh --delete --topic ent_adt &


bin/kafka-topics.sh --delete --topic fhirsvr_codesystem &
bin/kafka-topics.sh --delete --topic ent_fhirsvr_codesystem &