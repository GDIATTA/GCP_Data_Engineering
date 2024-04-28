---------------How to create an instance postgres from cloud SQL in cloud shell:

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql instances create postgres --database-version=POSTGRES_14 --cpu=2 --memory=8 --region=europe-west1
Creating Cloud SQL instance for POSTGRES_14...done.                                                                                                                                                                                               
Created [https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/instances/postgres].
NAME: postgres
DATABASE_VERSION: POSTGRES_14
LOCATION: europe-west1-d
TIER: db-custom-2-8192
PRIMARY_ADDRESS: 35.187.110.15
PRIVATE_ADDRESS: -
STATUS: RUNNABLE

----------- Create a database "postgres1" from instance "postgres" :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql databases create postgres1 --instance=postgres
Creating Cloud SQL database...done.                                                                                                                                                                                                               
Created database [postgres1].
instance: postgres
name: postgres1
project: atlantean-wares-421508

----------- List databases from my instance "postgres":
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql databases list --instance=postgres
NAME: postgres
CHARSET: UTF8
COLLATION: en_US.UTF8

NAME: postgres1
CHARSET: UTF8
COLLATION: en_US.UTF8

NAME: customers
CHARSET: UTF8
COLLATION: en_US.UTF8

----------- Create a password :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql users set-password postgres \
--instance=postgres \
--prompt-for-password
New Password: 
Updating Cloud SQL user...done.

----------- Delete database "postgres1"
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql databases delete postgres1 --instance=postgres
The database will be deleted. Any data stored in the database will be destroyed. You cannot undo this action.

Do you want to continue (Y/n)?  Y

Deleting Cloud SQL database...done.                                                                                                                                                                                                               
Deleted database [postgres1].

--------------List databases :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql databases list --instance=postgres
NAME: postgres
CHARSET: UTF8
COLLATION: en_US.UTF8

NAME: customers
CHARSET: UTF8
COLLATION: en_US.UTF8

----------- Connect to my user :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql connect postgres --user=postgres --quiet
Allowlisting your IP for incoming connection for 5 minutes...done.                                                                                                                                                                                
Connecting to database with SQL user [postgres].Password: 
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.10)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
Type "help" for help.
---------------- How to show all my database
postgres=> \list
                                                                      List of databases
     Name      |       Owner       | Encoding | Locale Provider |  Collate   |   Ctype    | ICU Locale | ICU Rules |            Access privileges            
---------------+-------------------+----------+-----------------+------------+------------+------------+-----------+-----------------------------------------
 cloudsqladmin | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 customers     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 postgres      | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 template0     | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqladmin                       +
               |                   |          |                 |            |            |            |           | cloudsqladmin=CTc/cloudsqladmin
 template1     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqlsuperuser                   +
               |                   |          |                 |            |            |            |           | cloudsqlsuperuser=CTc/cloudsqlsuperuser
(5 rows)

postgres-> \l
                                                                      List of databases
     Name      |       Owner       | Encoding | Locale Provider |  Collate   |   Ctype    | ICU Locale | ICU Rules |            Access privileges            
---------------+-------------------+----------+-----------------+------------+------------+------------+-----------+-----------------------------------------
 cloudsqladmin | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 customers     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 postgres      | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 template0     | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqladmin                       +
               |                   |          |                 |            |            |            |           | cloudsqladmin=CTc/cloudsqladmin
 template1     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqlsuperuser                   +
               |                   |          |                 |            |            |            |           | cloudsqlsuperuser=CTc/cloudsqlsuperuser
(5 rows)

-------------- How to connect into my database "customers"
postgres=> postgres=> \connect customers
Password: 
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.10)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
You are now connected to database "customers" as user "postgres".

---------- How to create table "films" :
customers=> CREATE TABLE films (
    code        char(5) CONSTRAINT firstkey PRIMARY KEY,
    title       varchar(40) NOT NULL,
    did         integer NOT NULL,
    date_prod   date,
    kind        varchar(10),
    len         interval hour to minute
);
CREATE TABLE

------------------------ How to list tables in my database "customers":
customers=> \dt
         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | films | table | postgres
(1 row)

----------- How to create table " :
customers=> CREATE TABLE public.CLIENT(
        CODCLI     INT  NOT NULL ,
        DESIGN     VARCHAR (20)  ,
        NOTEL      VARCHAR (14)  ,
        ADRESSE    VARCHAR (30)  ,
        CODEPOST   CHAR (5)   ,
        VILLE      VARCHAR (20)  ,
        CORRESP    VARCHAR (20)  ,
        LIBSECT    VARCHAR (20)   ,
        CONSTRAINT CLIENT_PK PRIMARY KEY (CODCLI)
)WITHOUT OIDS;
CREATE TABLE
customers=> \dt
         List of relations
 Schema |  Name  | Type  |  Owner   
--------+--------+-------+----------
 public | client | table | postgres
 public | films  | table | postgres
(2 rows)

---------- How to insert a data in my table "client"
customers=> INSERT INTO client (CODCLI, DESIGN, NOTEL, ADRESSE, CODEPOST, VILLE, CORRESP, LIBSECT) VALUES
(1, 'RENAULT', '01 44 73 22 11', 'ZAC Billancourt', '92100', 'BOULOGNE \r\nCEDEX', 'CARLOS', 'AUTOMOBILE'),
(2, 'POINT PRESSE', '01 54 23 66 88', '1 place du marché', '92000', 'BOULOGNE', 'ROBERT', 'PRESSE'),
(3, 'VAN KLOOT', '01 57 63 21 02', '4 place Brooker', '97654', 'BRUXELLES', 'DEMESSMAEKER', 'EDITION'),
(7, 'RASPOUTINE', '01 92 54 18 25', '32 impasse Taillefer', '20000', 'AJACCIO', 'TARANTINI', 'TOURISME'),
(9, 'PRINTEMPS', '01 42 17 17 11', '35 boulevard Haussmann', '75009', 'PARIS', 'RAVIDOVICCI', 'DISTRIBUTION'),
(13, 'RFF', '01 57 21 44 33', 'zone Tolbiac', '75013', 'PARIS', 'TRANSPORT', NULL),
(77, 'BOUCHERIE SANZOT', '01 77 66 71 44', '3 rue des tournesols', '77543', 'MOULINSARD', 'DUPONT AND DUPOND', 'VIANDE EN GROS'),
(120, 'BEBERT JEUNE', '01 77 35 08 33', '10 boulevard Saint-Michel', '75005', 'PARIS', 'LAJAUNIE', 'PRESSE'),
(127, 'LECLERC', '01 29 03 45 71', '11 rue de Rivoli', '75001', 'PARIS', 'COCHONOU', 'FILATURE');
INSERT 0 9

-----------How to show my table "client"
customers=> select * from client;
 codcli |      design      |     notel      |          adresse          | codepost |       ville        |      corresp      |    libsect     
--------+------------------+----------------+---------------------------+----------+--------------------+-------------------+----------------
      1 | RENAULT          | 01 44 73 22 11 | ZAC Billancourt           | 92100    | BOULOGNE \r\nCEDEX | CARLOS            | AUTOMOBILE
      2 | POINT PRESSE     | 01 54 23 66 88 | 1 place du marché         | 92000    | BOULOGNE           | ROBERT            | PRESSE
      3 | VAN KLOOT        | 01 57 63 21 02 | 4 place Brooker           | 97654    | BRUXELLES          | DEMESSMAEKER      | EDITION
      7 | RASPOUTINE       | 01 92 54 18 25 | 32 impasse Taillefer      | 20000    | AJACCIO            | TARANTINI         | TOURISME
      9 | PRINTEMPS        | 01 42 17 17 11 | 35 boulevard Haussmann    | 75009    | PARIS              | RAVIDOVICCI       | DISTRIBUTION
     13 | RFF              | 01 57 21 44 33 | zone Tolbiac              | 75013    | PARIS              | TRANSPORT         | 
     77 | BOUCHERIE SANZOT | 01 77 66 71 44 | 3 rue des tournesols      | 77543    | MOULINSARD         | DUPONT AND DUPOND | VIANDE EN GROS
    120 | BEBERT JEUNE     | 01 77 35 08 33 | 10 boulevard Saint-Michel | 75005    | PARIS              | LAJAUNIE          | PRESSE
    127 | LECLERC          | 01 29 03 45 71 | 11 rue de Rivoli          | 75001    | PARIS              | COCHONOU          | FILATURE
(9 rows)

----------------- How to find the identify of my service Account Email Address in searching from output "serviceAccountEmailAddress":
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql instances describe postgres
backendType: SECOND_GEN
connectionName: atlantean-wares-421508:europe-west1:postgres
createTime: '2024-04-26T20:12:27.799Z'
databaseInstalledVersion: POSTGRES_14_10
databaseVersion: POSTGRES_14
etag: 5fe232aad907fa8a70cda41ce67989008991bfb0603ddf4e5b84e951ef766b54
gceZone: europe-west1-d
geminiConfig:
  activeQueryEnabled: false
  entitled: false
  googleVacuumMgmtEnabled: false
  indexAdvisorEnabled: false
  oomSessionCancelEnabled: false
instanceType: CLOUD_SQL_INSTANCE
ipAddresses:
- ipAddress: 35.187.110.15
  type: PRIMARY
- ipAddress: 34.78.169.83
  type: OUTGOING
kind: sql#instance
maintenanceVersion: POSTGRES_14_10.R20240130.00_09
name: postgres
project: atlantean-wares-421508
region: europe-west1
selfLink: https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/instances/postgres
serverCaCert:
  cert: |-
    -----BEGIN CERTIFICATE-----
    MIIDfzCCAmegAwIBAgIBADANBgkqhkiG9w0BAQsFADB3MS0wKwYDVQQuEyQ4YWIz
    YjhjZi0yZWNjLTQ3ZTMtODQyZS03MzdhNmFmYzBmNjUxIzAhBgNVBAMTGkdvb2ds
    ZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUsIEluYzELMAkG
    A1UEBhMCVVMwHhcNMjQwNDI2MjAxMzIyWhcNMzQwNDI0MjAxNDIyWjB3MS0wKwYD
    VQQuEyQ4YWIzYjhjZi0yZWNjLTQ3ZTMtODQyZS03MzdhNmFmYzBmNjUxIzAhBgNV
    BAMTGkdvb2dsZSBDbG91ZCBTUUwgU2VydmVyIENBMRQwEgYDVQQKEwtHb29nbGUs
    IEluYzELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
    AQDFzklGm/PF5Di60Jh41+1gcBChzvhzybF1wkcYwl1Ff5GdNX/815Qno3jaeKFS
    H/fMlNuC1EJEgkMqIzKZ0i8kWf1FQmv6SW5HV9osRTxLUYg66Hh9pN+aQnTQXesc
    8ZV/u4x4Mo9f1Iie2JedoMXV1urStl+xRCMp5SCCgfuI3TEERSQvHtNqfuPZWtdk
    nM5sjyTz83XryyuW1iaaGO1rs/QT/rm2SwUSpeLJiHHkCNf3SsZT3mFcZOdePrFU
    WvOlK9P7YyYkp1YnV/74HPdG+x9U8uuxK13bDxS9TyolB3dsJ1mAEOe6ZDH9+9tc
    88Sy+zZoON/n0bK8YA8eChutAgMBAAGjFjAUMBIGA1UdEwEB/wQIMAYBAf8CAQAw
    DQYJKoZIhvcNAQELBQADggEBAKXrFxoRxeER5Hnz5KI85pnThmTfIhsnzSFXyTMz
    LgfUvV6ugGx/iyx+qDgY1jKkAXmpKAJs/1nMlSn5/SIIGBEhrkmOpP0ROadgXfLB
    thb928z6P4VyxTvoghFp3rjNNbkuzfcCmVJ4WpE1wzUqOWcFyd4oG4dyxWMEnvKQ
    yAn5GLlwWfVXjCNbPPqHTWX90W0s2MSkHiQYkswVcBR4U8MI/FsnMD5InfaEd789
    voPXLEipUDcCfDs5seQCrSp2rOmRkYlNWqosozqmk3Yp7o0qQlIJasCP9QIiFA1S
    6KJ+X2GteTkX2cQeNeVwClO7ernN4Dd2eKC4CqDWsByPpAk=
    -----END CERTIFICATE-----
  certSerialNumber: '0'
  commonName: C=US,O=Google\, Inc,CN=Google Cloud SQL Server CA,dnQualifier=8ab3b8cf-2ecc-47e3-842e-737a6afc0f65
  createTime: '2024-04-26T20:13:22.737Z'
  expirationTime: '2034-04-24T20:14:22.737Z'
  instance: postgres
  kind: sql#sslCert
  sha1Fingerprint: 492706cab37a8ab2aca14d84cc05b4a4988ccdb3
serviceAccountEmailAddress: p595515187499-j45c01@gcp-sa-cloud-sql.iam.gserviceaccount.com // ---Need
settings:
  activationPolicy: ALWAYS
  availabilityType: ZONAL
  backupConfiguration:
    backupRetentionSettings:
      retainedBackups: 7
      retentionUnit: COUNT
    enabled: false
    kind: sql#backupConfiguration
    startTime: 20:00
    transactionLogRetentionDays: 7
    transactionalLogStorageState: TRANSACTIONAL_LOG_STORAGE_STATE_UNSPECIFIED
  connectorEnforcement: NOT_REQUIRED
  dataDiskSizeGb: '10'
  dataDiskType: PD_SSD
  deletionProtectionEnabled: false
  ipConfiguration:
    ipv4Enabled: true
    requireSsl: false
    sslMode: ALLOW_UNENCRYPTED_AND_ENCRYPTED
  kind: sql#settings
  locationPreference:
    kind: sql#locationPreference
    zone: europe-west1-c
  pricingPlan: PER_USE
  replicationType: SYNCHRONOUS
  settingsVersion: '20'
  storageAutoResize: true
  storageAutoResizeLimit: '0'
  tier: db-custom-2-8192
sqlNetworkArchitecture: NEW_NETWORK_ARCHITECTURE
state: RUNNABLE

---------------- How to export csv files from table of database postgresql in Cloud SQL into GCS :(You need to add "serviceAccountEmailAddress: p595515187499-j45c01@gcp-sa-cloud-sql.iam.gserviceaccount.com" in your bucket acces user and then add storage.objectAdmin ass IAM role) :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql export csv postgres gs://gaussstoragebucket/output/client_exp --database=customers --offload --query="select * from client"
Serverless exports cost extra. See the pricing page for more information: https://cloud.google.com/sql/pricing.
Exporting Cloud SQL instance...done.                                                                                                                                                                                                              
Exported [https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/instances/postgres] to [gs://gaussstoragebucket/output/client_exp].

--------------- How to import csv files from GCS bucket into my table "client_imp" in my database "customers" :(You need to add "serviceAccountEmailAddress: p595515187499-j45c01@gcp-sa-cloud-sql.iam.gserviceaccount.com" in your bucket acces user and then add storage.objectAdmin ass IAM role) :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql connect postgres --user=postgres --quiet
Allowlisting your IP for incoming connection for 5 minutes...done.                                                                                                                                                                                
Connecting to database with SQL user [postgres].Password: 
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.10)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
Type "help" for help.

postgres=> \l
                                                                      List of databases
     Name      |       Owner       | Encoding | Locale Provider |  Collate   |   Ctype    | ICU Locale | ICU Rules |            Access privileges            
---------------+-------------------+----------+-----------------+------------+------------+------------+-----------+-----------------------------------------
 cloudsqladmin | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 customers     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 postgres      | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | 
 template0     | cloudsqladmin     | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqladmin                       +
               |                   |          |                 |            |            |            |           | cloudsqladmin=CTc/cloudsqladmin
 template1     | cloudsqlsuperuser | UTF8     | libc            | en_US.UTF8 | en_US.UTF8 |            |           | =c/cloudsqlsuperuser                   +
               |                   |          |                 |            |            |            |           | cloudsqlsuperuser=CTc/cloudsqlsuperuser
(5 rows)

postgres=> \connect customers
Password: 
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.10)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
You are now connected to database "customers" as user "postgres".
customers=> \dt
         List of relations
 Schema |  Name  | Type  |  Owner   
--------+--------+-------+----------
 public | client | table | postgres
 public | films  | table | postgres
(2 rows)
customers=> CREATE TABLE public.CLIENT_imp(
        CODCLI     INT  NOT NULL ,
        DESIGN     VARCHAR (20)  ,
        NOTEL      VARCHAR (14)  ,
        ADRESSE    VARCHAR (30)  ,
        CODEPOST   CHAR (5)   ,
        VILLE      VARCHAR (20)  ,
        CORRESP    VARCHAR (20)  ,
        LIBSECT    VARCHAR (20)   ,
        CONSTRAINT CLIENT_PK PRIMARY KEY (CODCLI)
)WITHOUT OIDS;
ERROR:  relation "client_pk" already exists
customers=> CREATE TABLE public.CLIENT_imp(
        CODCLI     INT  NOT NULL ,
        DESIGN     VARCHAR (20)  ,
        NOTEL      VARCHAR (14)  ,
        ADRESSE    VARCHAR (30)  ,
        CODEPOST   CHAR (5)   ,
        VILLE      VARCHAR (20)  ,
        CORRESP    VARCHAR (20)  ,
        LIBSECT    VARCHAR (20)   ,
        CONSTRAINT CLIENT_PG PRIMARY KEY (CODCLI)
)WITHOUT OIDS;
CREATE TABLE
customers=> \dt
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | client     | table | postgres
 public | client_imp | table | postgres
 public | films      | table | postgres
(3 rows)

customers=> ^C
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql import csv postgres gs://gaussstoragebucket/output/client_exp \
--database=customers \
--table=client_imp
Data from [gs://gaussstoragebucket/output/client_exp] will be imported to [postgres].

Do you want to continue (Y/n)?  Y

Importing data into Cloud SQL instance...done.                                                                                                                                                                                                    
Imported data from [gs://gaussstoragebucket/output/client_exp] into [https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/instances/postgres].


------------- How to find the operations list :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud beta sql operations list --instance=postgres       
NAME: 1d2def62-ae7f-4d17-b4e6-080500000024
TYPE: IMPORT
START: 2024-04-27T10:08:50.304+00:00
END: 2024-04-27T10:09:00.649+00:00
ERROR: -
STATUS: DONE

NAME: 3f060143-abeb-4cbd-aabf-680800000024
TYPE: UPDATE
START: 2024-04-27T10:02:36.181+00:00
END: 2024-04-27T10:02:57.112+00:00
ERROR: -
STATUS: DONE

NAME: 05d21c6f-7c14-44cc-b7aa-cbb100000024
TYPE: EXPORT
START: 2024-04-27T09:28:39.420+00:00
END: 2024-04-27T09:31:34.984+00:00
ERROR: -
STATUS: DONE

NAME: d6030b2d-8752-4391-8fbd-eb3c00000024
TYPE: UPDATE
START: 2024-04-27T09:04:23.458+00:00
END: 2024-04-27T09:04:44.528+00:00
ERROR: -
STATUS: DONE

NAME: cbf777d1-e3ed-4d09-a36a-0de200000024
TYPE: UPDATE
START: 2024-04-27T08:43:19.207+00:00
END: 2024-04-27T08:45:26.467+00:00
ERROR: -
STATUS: DONE

NAME: 3d923e79-1b74-4f3b-bf0a-f0f800000024
TYPE: UPDATE
START: 2024-04-26T23:59:08.561+00:00
END: 2024-04-26T23:59:40.887+00:00
ERROR: -
STATUS: DONE

NAME: 6b832b6c-6071-4ccc-956a-30ce00000024
TYPE: UPDATE
START: 2024-04-26T21:35:31.909+00:00
END: 2024-04-26T21:35:52.826+00:00
ERROR: -
STATUS: DONE

NAME: a21aa974-4525-494e-8cf0-2f8600000024
TYPE: UPDATE
START: 2024-04-26T21:31:27.873+00:00
END: 2024-04-26T21:31:48.826+00:00
ERROR: -
STATUS: DONE

NAME: cd2e707a-9000-4f01-9cea-8e5900000024
TYPE: UPDATE
START: 2024-04-26T21:25:37.394+00:00
END: 2024-04-26T21:25:58.412+00:00
ERROR: -
STATUS: DONE

NAME: 43d448f8-a24b-44b5-94f6-f5bc00000024
TYPE: UPDATE
START: 2024-04-26T21:22:54.384+00:00
END: 2024-04-26T21:23:15.377+00:00
ERROR: -
STATUS: DONE

NAME: 2c709fc0-b03a-41d9-8dd8-ee9500000024
TYPE: UPDATE
START: 2024-04-26T21:21:53.933+00:00
END: 2024-04-26T21:22:15.048+00:00
ERROR: -
STATUS: DONE

NAME: 254aa7db-f394-4638-a00f-dd6700000024
TYPE: UPDATE
START: 2024-04-26T21:20:35.857+00:00
END: 2024-04-26T21:20:56.831+00:00
ERROR: -
STATUS: DONE

NAME: 4d9c216f-3fbb-467d-9ef3-70b500000024
TYPE: DELETE_DATABASE
START: 2024-04-26T20:38:11.007+00:00
END: 2024-04-26T20:38:11.132+00:00
ERROR: -
STATUS: DONE

NAME: b4e12736-68dc-4e15-9f77-669f00000024
TYPE: UPDATE_USER
START: 2024-04-26T20:27:55.431+00:00
END: 2024-04-26T20:27:55.560+00:00
ERROR: -
STATUS: DONE

NAME: 27ad0711-f5aa-4dae-937c-e70f00000024
TYPE: CREATE_DATABASE
START: 2024-04-26T20:23:20.054+00:00
END: 2024-04-26T20:23:20.234+00:00
ERROR: -
STATUS: DONE

NAME: b25911b4-ce46-4429-a9b5-2bab00000024
TYPE: CREATE_DATABASE
START: 2024-04-26T20:20:58.183+00:00
END: 2024-04-26T20:20:58.334+00:00
ERROR: -
STATUS: DONE

NAME: 98e10a6c-cacb-4325-983f-3c2000000024
TYPE: CREATE_DATABASE
START: 2024-04-26T20:19:46.655+00:00
END: 2024-04-26T20:19:46.737+00:00
ERROR: INTERNAL_ERROR
STATUS: DONE

NAME: bd346fe6-f389-45b8-88d8-84f800000024
TYPE: CREATE
START: 2024-04-26T20:12:31.380+00:00
END: 2024-04-26T20:16:09.642+00:00
ERROR: -
STATUS: DONE

------------ How to cancel an operation :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql operations cancel 1d2def62-ae7f-4d17-b4e6-080500000024
WARNING: Warning: You are about to cancel [1d2def62-ae7f-4d17-b4e6-080500000024].
Do you want to continue (Y/n)?  Y

ERROR: (gcloud.sql.operations.cancel) HTTPError 400: Invalid request: You can't cancel operation 1d2def62-ae7f-4d17-b4e6-080500000024 because it isn't in progress.

------------ How to verify status of canceled operation :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud sql operations describe 1d2def62-ae7f-4d17-b4e6-080500000024
endTime: '2024-04-27T10:09:00.649Z'
importContext:
  csvImportOptions:
    table: client_imp
  database: customers
  fileType: CSV
  kind: sql#importContext
  uri: gs://gaussstoragebucket/output/client_exp
insertTime: '2024-04-27T10:08:50.196Z'
kind: sql#operation
name: 1d2def62-ae7f-4d17-b4e6-080500000024
operationType: IMPORT
selfLink: https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/operations/1d2def62-ae7f-4d17-b4e6-080500000024
startTime: '2024-04-27T10:08:50.304Z'
status: DONE
targetId: postgres
targetLink: https://sqladmin.googleapis.com/sql/v1beta4/projects/atlantean-wares-421508/instances/postgres
targetProject: atlantean-wares-421508
user: gaussjatta1@gmail.com
