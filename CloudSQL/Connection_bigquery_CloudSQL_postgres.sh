---------How to create a connection from Bigquery into Cloud SQL(my database "customers" in postgresql):
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq mk --connection   --display_name='friendly name'   --connection_type='CLOUD_SQL'   --properties='{"instanceId":"atlantean-wares-421508:europe-west1:postgres","database":"customers","type":"POSTGRES"}'   --connection_credential='{"username":"postgres", "password":"root"}'   --project_id=atlantean-wares-421508   --location=eu my_connection_idi
Connection 595515187499.eu.my_connection_idi successfully created


---------You need to authentificate on cloud shell before you access to service account :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud auth login

You are already authenticated with gcloud when running
inside the Cloud Shell and so do not need to run this
command. Do you wish to proceed anyway?

Do you want to continue (Y/n)?  Y

Go to the following link in your browser:

    https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=32555940559.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fsdk.cloud.google.com%2Fauthcode.html&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fsqlservice.login+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&state=yii9d37d4DTVspwdtVgULThEcqN5Cv&prompt=consent&token_usage=remote&access_type=offline&code_challenge=uk6JSttkA6g70eLDuqU5QWI6-XEXbaJdH9wZUmkeXyM&code_challenge_method=S256

Enter authorization code: 4/0AeaYSHA7W1dI7QBxWYQxn5MPsVSuby0nqzS6zn1L0C-T4BOnB7XZ3hneVvNqdEKKmeS9wg

You are now logged in as [gaussjatta1@gmail.com].
Your current project is [atlantean-wares-421508].  You can change this setting by running:
  $ gcloud config set project PROJECT_ID


------------You can access to service account :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects add-iam-policy-binding atlantean-wares-421508 --member=serviceAccount:service-595515187499@gcp-sa-bigqueryconnection.iam.gserviceaccount.com --role=roles/cloudsql.client
Updated IAM policy for project [atlantean-wares-421508].
bindings:
- members:
  - serviceAccount:service-595515187499@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com
  role: roles/bigquerydatatransfer.serviceAgent
- members:
  - serviceAccount:service-595515187499@gcp-sa-bigqueryconnection.iam.gserviceaccount.com
  role: roles/cloudsql.client
- members:
  - user:gaussjatta1@gmail.com
  role: roles/composer.environmentAndStorageObjectAdmin
- members:
  - user:gaussjatta1@gmail.com
  role: roles/compute.storageAdmin
- members:
  - user:gaussjatta1@gmail.com
  role: roles/owner
etag: BwYXE9F4Yto=
version: 1
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$

---------------- You can go in Bigquery explorer to request the tables of database from cloud SQL in clicking on connection_id :

For examples, here is some requests : 

SELECT * FROM EXTERNAL_QUERY("atlantean-wares-421508.eu.my_connection_idi", "SELECT * FROM INFORMATION_SCHEMA.TABLES;");


SELECT * FROM EXTERNAL_QUERY("atlantean-wares-421508.eu.my_connection_idi", "SELECT * FROM client;");