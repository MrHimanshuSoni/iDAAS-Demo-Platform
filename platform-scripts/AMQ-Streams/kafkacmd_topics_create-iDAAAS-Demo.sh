kafkaDir=$HOME'/RedHatTech/kafka_2.12-2.5.0.redhat-00003'
echo "Directory: "$kafkaDir
cd $kafkaDir

## HL7
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic mctn_mms_adt &
## Facility By Application by Message Trigger
## Facility: MCTN
## Application: MMS
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic mctn_adt &
## Enterprise By Application by Message Trigger
## Facility: MCTN
## Application: MMS
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic mms_adt &
## HL7
## Enterprise by Message Trigger
## Application: MMS
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ent_adt &

## FHIR Third Party Server Integration
## Enterprise Level Topics by Message Trigger
## Application: Integration with Partner FHIR Server
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic fhirsvr_codeSystem &
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ent_fhirsvr_codeSystem &
