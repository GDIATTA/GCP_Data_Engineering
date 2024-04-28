
--------- How to activate Dataflow API, Computer Engine, Cloud Logging, Cloud Storage, Google Cloud Storage JSON, Bigquery, Cloud Pub/Sub, Cloud Datastore and Cloud Resource Manager :

Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to atlantean-wares-421508.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud services enable dataflow compute_component logging storage_component storage_api bigquery pubsub datastore.googleapis.com cloudresourcemanager.googleapis.com
Operation "operations/acf.p2-595515187499-6ae0dbfe-2ba8-433a-9ce8-827442ecce35" finished successfully.

---------------- Create loacl authentification identify for google account :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud auth application-default login

You are running on a Google Compute Engine virtual machine.
The service credentials associated with this virtual machine
will automatically be used by Application Default
Credentials, so it is not necessary to use this command.

If you decide to proceed anyway, your user credentials may be visible
to others with access to this virtual machine. Are you sure you want
to authenticate with your personal account?

Do you want to continue (Y/n)?  Y

Go to the following link in your browser:

    https://accounts.google.com/o/oauth2/auth?type=code&client_id=7640.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fsdk.cloud.google.com%2Fapplicationdefaultauthcode.html&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fsqlservice.login&state=ICLuI4aD3HqeVRKdaMAzQK94hNmHKd&prompt=consent&token_usage=remote&access_type=offline&code_challenge=9jtzItcZ4aDiePLdxZlhdMxD9WEhCOR1r-2qm5FM8_A&code_challenge_method=S256

Enter authorization code: 4/0AeaYSHC60_pyubQr-bxfQ370_rG-8qvItm3QTcPntdL_t3pLzTPBmm0Rg

Credentials saved to file: [/tmp/tmp.zOZgp3k8J1/application_default_credentials.json]

These credentials will be used by any library that requests Application Default Credentials (ADC).

Quota project "atlantean-wares-421508" was added to ADC which can be used by Google client libraries for billing and quota. Note that some services may still bill the project owning the resource.

-------------Activate the service :API Dataflow, Compute Engine, Cloud Logging, Cloud Storage, Google Cloud Storage JSON,    BigQuery, Cloud Pub/Sub, Cloud Datastore et Cloud Resource Manager :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud services enable dataflow compute_component logging storage_component storage_api bigquery pubsub datastore.googleapis.com cloudresourcemanager.googleapis.com
Operation "operations/acf.p2-595515187499-6ae0dbfe-2ba8-433a-9ce8-827442ecce35" finished successfully.

------------ Attribute roles to my google account :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects add-iam-policy-binding atlantean-wares-421508 --member="user:gaussjatta1@gmail.com" --role=roles/iam.serviceAccountUser
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
  - serviceAccount:service-595515187499@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - user:gaussjatta1@gmail.com
  role: roles/compute.storageAdmin
- members:
  - user:gaussjatta1@gmail.com
  role: roles/dataflow.admin
- members:
  - serviceAccount:service-595515187499@dataflow-service-producer-prod.iam.gserviceaccount.com
  role: roles/dataflow.serviceAgent
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - serviceAccount:595515187499@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - user:gaussjatta1@gmail.com
  role: roles/iam.serviceAccountUser
- members:
  - user:gaussjatta1@gmail.com
  role: roles/owner
- members:
  - serviceAccount:service-595515187499@gcp-sa-pubsub.iam.gserviceaccount.com
  role: roles/pubsub.serviceAgent
etag: BwYXGdyEJ4k=
version: 1

--------------- Show prjects identify :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects describe
ERROR: (gcloud.projects.describe) argument PROJECT_ID_OR_NUMBER: Must be specified.
Usage: gcloud projects describe PROJECT_ID_OR_NUMBER [optional flags]
  optional flags may be  --help

For detailed information on this command and its flags, run:
  gcloud projects describe --help
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects describe atlantean-wares-421508
createTime: '2024-04-26T08:15:23.462339Z'
lifecycleState: ACTIVE
name: My Project 14985
projectId: atlantean-wares-421508
projectNumber: '595515187499'

------------- ----------- Attribute roles to my Computer Engine service account :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects add-iam-policy-binding atlantean-wares-421508 --member="serviceAccount:595515187499-compute@developer.gserviceaccount.com" --role=roles/dataflow.admin
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
  - serviceAccount:service-595515187499@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - user:gaussjatta1@gmail.com
  role: roles/compute.storageAdmin
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - user:gaussjatta1@gmail.com
  role: roles/dataflow.admin
- members:
  - serviceAccount:service-595515187499@dataflow-service-producer-prod.iam.gserviceaccount.com
  role: roles/dataflow.serviceAgent
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - serviceAccount:595515187499@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - user:gaussjatta1@gmail.com
  role: roles/iam.serviceAccountUser
- members:
  - user:gaussjatta1@gmail.com
  role: roles/owner
- members:
  - serviceAccount:service-595515187499@gcp-sa-pubsub.iam.gserviceaccount.com
  role: roles/pubsub.serviceAgent
etag: BwYXGfRPhjY=
version: 1

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects add-iam-policy-binding atlantean-wares-421508 --member="serviceAccount:595515187499-compute@developer.gserviceaccount.com" --role=roles/dataflow.worker
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
  - serviceAccount:service-595515187499@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - user:gaussjatta1@gmail.com
  role: roles/compute.storageAdmin
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - user:gaussjatta1@gmail.com
  role: roles/dataflow.admin
- members:
  - serviceAccount:service-595515187499@dataflow-service-producer-prod.iam.gserviceaccount.com
  role: roles/dataflow.serviceAgent
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  role: roles/dataflow.worker
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - serviceAccount:595515187499@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - user:gaussjatta1@gmail.com
  role: roles/iam.serviceAccountUser
- members:
  - user:gaussjatta1@gmail.com
  role: roles/owner
- members:
  - serviceAccount:service-595515187499@gcp-sa-pubsub.iam.gserviceaccount.com
  role: roles/pubsub.serviceAgent
etag: BwYXGfYoqn4=
version: 1
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud projects add-iam-policy-binding atlantean-wares-421508 --member="serviceAccount:595515187499-compute@developer.gserviceaccount.com" --role=roles/storage.objectAdmin
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
  - serviceAccount:service-595515187499@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - user:gaussjatta1@gmail.com
  role: roles/compute.storageAdmin
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - user:gaussjatta1@gmail.com
  role: roles/dataflow.admin
- members:
  - serviceAccount:service-595515187499@dataflow-service-producer-prod.iam.gserviceaccount.com
  role: roles/dataflow.serviceAgent
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  role: roles/dataflow.worker
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  - serviceAccount:595515187499@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - user:gaussjatta1@gmail.com
  role: roles/iam.serviceAccountUser
- members:
  - user:gaussjatta1@gmail.com
  role: roles/owner
- members:
  - serviceAccount:service-595515187499@gcp-sa-pubsub.iam.gserviceaccount.com
  role: roles/pubsub.serviceAgent
- members:
  - serviceAccount:595515187499-compute@developer.gserviceaccount.com
  role: roles/storage.objectAdmin
etag: BwYXGfeBzmU=
version: 1

------------ Create a bucket in cloud Srorage :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ gcloud storage buckets create gs://gaussstoragebucketnew --default-storage-class STANDARD --location EU                                                                                         
Creating gs://gaussstoragebucketnew/...

----------- Verify the version of python :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ python --version
Python 3.10.12

-----------Version of pip:

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ python -m pip --version
pip 22.0.2 from /usr/lib/python3/dist-packages/pip (python 3.10)
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ ls
names  README-cloudshell.txt

------------ Verify if my folder Dataflow has been imported well :

gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ ls
Dataflow  names  README-cloudshell.txt
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ cd Dataflow

---------- Set up my library environment of my project "Dataflow" :

gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python3 -m venv env
gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ ls
env  yob2020.txt
gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ source env/bin/activate

--------- Set up google-cloud-storage library :

(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ pip install google-cloud-storage
Collecting google-cloud-storage
  Downloading google_cloud_storage-2.16.0-py2.py3-none-any.whl (125 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 125.6/125.6 KB 5.7 MB/s eta 0:00:00
Collecting google-resumable-media>=2.6.0
  Downloading google_resumable_media-2.7.0-py2.py3-none-any.whl (80 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 80.6/80.6 KB 9.3 MB/s eta 0:00:00
Collecting google-crc32c<2.0dev,>=1.0
  Downloading google_crc32c-1.5.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (32 kB)
Collecting google-cloud-core<3.0dev,>=2.3.0
  Downloading google_cloud_core-2.4.1-py2.py3-none-any.whl (29 kB)
Collecting google-auth<3.0dev,>=2.26.1
  Downloading google_auth-2.29.0-py2.py3-none-any.whl (189 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 189.2/189.2 KB 9.6 MB/s eta 0:00:00
Collecting google-api-core<3.0.0dev,>=2.15.0
  Downloading google_api_core-2.18.0-py3-none-any.whl (138 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 138.3/138.3 KB 9.7 MB/s eta 0:00:00
Collecting requests<3.0.0dev,>=2.18.0
  Downloading requests-2.31.0-py3-none-any.whl (62 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.6/62.6 KB 758.7 kB/s eta 0:00:00
Collecting protobuf!=3.20.0,!=3.20.1,!=4.21.0,!=4.21.1,!=4.21.2,!=4.21.3,!=4.21.4,!=4.21.5,<5.0.0.dev0,>=3.19.5
  Downloading protobuf-4.25.3-cp37-abi3-manylinux2014_x86_64.whl (294 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 294.6/294.6 KB 6.1 MB/s eta 0:00:00
Collecting googleapis-common-protos<2.0.dev0,>=1.56.2
  Downloading googleapis_common_protos-1.63.0-py2.py3-none-any.whl (229 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 229.1/229.1 KB 12.8 MB/s eta 0:00:00
Collecting proto-plus<2.0.0dev,>=1.22.3
  Downloading proto_plus-1.23.0-py3-none-any.whl (48 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 48.8/48.8 KB 7.0 MB/s eta 0:00:00
Collecting cachetools<6.0,>=2.0.0
  Downloading cachetools-5.3.3-py3-none-any.whl (9.3 kB)
Collecting pyasn1-modules>=0.2.1
  Downloading pyasn1_modules-0.4.0-py3-none-any.whl (181 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 181.2/181.2 KB 12.1 MB/s eta 0:00:00
Collecting rsa<5,>=3.1.4
  Downloading rsa-4.9-py3-none-any.whl (34 kB)
Collecting urllib3<3,>=1.21.1
  Downloading urllib3-2.2.1-py3-none-any.whl (121 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 121.1/121.1 KB 13.7 MB/s eta 0:00:00
Collecting charset-normalizer<4,>=2
  Downloading charset_normalizer-3.3.2-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (142 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 142.1/142.1 KB 12.6 MB/s eta 0:00:00
Collecting idna<4,>=2.5
  Downloading idna-3.7-py3-none-any.whl (66 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 66.8/66.8 KB 4.8 MB/s eta 0:00:00
Collecting certifi>=2017.4.17
  Downloading certifi-2024.2.2-py3-none-any.whl (163 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 163.8/163.8 KB 10.4 MB/s eta 0:00:00
Collecting pyasn1<0.7.0,>=0.4.6
  Downloading pyasn1-0.6.0-py2.py3-none-any.whl (85 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 85.3/85.3 KB 8.0 MB/s eta 0:00:00
Installing collected packages: urllib3, pyasn1, protobuf, idna, google-crc32c, charset-normalizer, certifi, cachetools, rsa, requests, pyasn1-modules, proto-plus, googleapis-common-protos, google-resumable-media, google-auth, google-api-core, google-cloud-core, google-cloud-storage
Successfully installed cachetools-5.3.3 certifi-2024.2.2 charset-normalizer-3.3.2 google-api-core-2.18.0 google-auth-2.29.0 google-cloud-core-2.4.1 google-cloud-storage-2.16.0 google-crc32c-1.5.0 google-resumable-media-2.7.0 googleapis-common-protos-1.63.0 idna-3.7 proto-plus-1.23.0 protobuf-4.25.3 pyasn1-0.6.0 pyasn1-modules-0.4.0 requests-2.31.0 rsa-4.9 urllib3-2.2.1

------------- Set up wheel library :

(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ pip install wheel
Collecting wheel
  Downloading wheel-0.43.0-py3-none-any.whl (65 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 65.8/65.8 KB 4.2 MB/s eta 0:00:00
Installing collected packages: wheel
Successfully installed wheel-0.43.0
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ pip install 'apache-beam[gcp]'
Collecting apache-beam[gcp]
  Downloading apache_beam-2.55.1-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (14.8 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 14.8/14.8 MB 39.9 MB/s eta 0:00:00
Collecting crcmod<2.0,>=1.7
  Downloading crcmod-1.7.tar.gz (89 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 89.7/89.7 KB 12.1 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... done
Collecting dill<0.3.2,>=0.3.1.1
  Downloading dill-0.3.1.1.tar.gz (151 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 152.0/152.0 KB 20.3 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... done
Collecting jsonpickle<4.0.0,>=3.0.0
  Downloading jsonpickle-3.0.4-py3-none-any.whl (39 kB)
Collecting python-dateutil<3,>=2.8.0
  Downloading python_dateutil-2.9.0.post0-py2.py3-none-any.whl (229 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 229.9/229.9 KB 25.9 MB/s eta 0:00:00
Collecting cloudpickle~=2.2.1
  Downloading cloudpickle-2.2.1-py3-none-any.whl (25 kB)
Collecting regex>=2020.6.8
  Downloading regex-2024.4.16-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (773 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 774.0/774.0 KB 53.4 MB/s eta 0:00:00
Collecting grpcio!=1.48.0,<2,>=1.33.1
  Downloading grpcio-1.62.2-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (5.5 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.5/5.5 MB 86.4 MB/s eta 0:00:00
Collecting hdfs<3.0.0,>=2.1.0
  Downloading hdfs-2.7.3.tar.gz (43 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 43.5/43.5 KB 5.7 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... done
Collecting pyarrow<15.0.0,>=3.0.0
  Downloading pyarrow-14.0.2-cp310-cp310-manylinux_2_28_x86_64.whl (38.0 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 38.0/38.0 MB 40.0 MB/s eta 0:00:00
Collecting packaging>=22.0
  Downloading packaging-24.0-py3-none-any.whl (53 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 53.5/53.5 KB 7.3 MB/s eta 0:00:00
Collecting httplib2<0.23.0,>=0.8
  Downloading httplib2-0.22.0-py3-none-any.whl (96 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 96.9/96.9 KB 12.8 MB/s eta 0:00:00
Collecting pytz>=2018.3
  Downloading pytz-2024.1-py2.py3-none-any.whl (505 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 505.5/505.5 KB 37.6 MB/s eta 0:00:00
Collecting orjson<4,>=3.9.7
  Downloading orjson-3.10.1-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (141 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 141.1/141.1 KB 17.6 MB/s eta 0:00:00
Collecting fasteners<1.0,>=0.3
  Downloading fasteners-0.19-py3-none-any.whl (18 kB)
Collecting jsonschema<5.0.0,>=4.0.0
  Downloading jsonschema-4.21.1-py3-none-any.whl (85 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 85.5/85.5 KB 11.2 MB/s eta 0:00:00
Collecting pydot<2,>=1.2.0
  Downloading pydot-1.4.2-py2.py3-none-any.whl (21 kB)
Collecting objsize<0.8.0,>=0.6.1
  Downloading objsize-0.7.0-py3-none-any.whl (11 kB)
Collecting pymongo<5.0.0,>=3.8.0
  Downloading pymongo-4.7.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (670 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 670.1/670.1 KB 47.5 MB/s eta 0:00:00
Collecting numpy<1.27.0,>=1.14.3
  Downloading numpy-1.26.4-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (18.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 18.2/18.2 MB 68.6 MB/s eta 0:00:00
Requirement already satisfied: requests<3.0.0,>=2.24.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (2.31.0)
Requirement already satisfied: protobuf!=4.0.*,!=4.21.*,!=4.22.0,!=4.23.*,!=4.24.*,<4.26.0,>=3.20.3 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (4.25.3)
Collecting zstandard<1,>=0.18.0
  Downloading zstandard-0.22.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (5.4 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.4/5.4 MB 96.0 MB/s eta 0:00:00
Requirement already satisfied: proto-plus<2,>=1.7.1 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (1.23.0)
Collecting typing-extensions>=3.7.0
  Downloading typing_extensions-4.11.0-py3-none-any.whl (34 kB)
Collecting js2py<1,>=0.74
  Downloading Js2Py-0.74-py3-none-any.whl (1.0 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.0/1.0 MB 62.9 MB/s eta 0:00:00
Collecting pyarrow-hotfix<1
  Downloading pyarrow_hotfix-0.6-py3-none-any.whl (7.9 kB)
Collecting fastavro<2,>=0.23.6
  Downloading fastavro-1.9.4-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (3.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.1/3.1 MB 111.6 MB/s eta 0:00:00
Collecting google-cloud-bigquery<4,>=2.0.0
  Downloading google_cloud_bigquery-3.21.0-py2.py3-none-any.whl (235 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 235.5/235.5 KB 29.1 MB/s eta 0:00:00
Collecting google-apitools<0.5.32,>=0.5.31
  Downloading google-apitools-0.5.31.tar.gz (173 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 173.5/173.5 KB 22.9 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... done
Requirement already satisfied: google-cloud-storage<3,>=2.14.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (2.16.0)
Collecting google-cloud-recommendations-ai<0.11.0,>=0.1.0
  Downloading google_cloud_recommendations_ai-0.10.10-py2.py3-none-any.whl (180 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 180.3/180.3 KB 20.0 MB/s eta 0:00:00
Collecting google-cloud-pubsublite<2,>=1.2.0
  Downloading google_cloud_pubsublite-1.10.0-py2.py3-none-any.whl (299 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 299.2/299.2 KB 25.5 MB/s eta 0:00:00
Collecting google-cloud-datastore<3,>=2.0.0
  Downloading google_cloud_datastore-2.19.0-py2.py3-none-any.whl (176 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 176.4/176.4 KB 17.7 MB/s eta 0:00:00
Requirement already satisfied: google-cloud-core<3,>=2.0.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (2.4.1)
Collecting google-cloud-vision<4,>=2
  Downloading google_cloud_vision-3.7.2-py2.py3-none-any.whl (459 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 459.6/459.6 KB 36.6 MB/s eta 0:00:00
Collecting google-cloud-pubsub<3,>=2.1.0
  Downloading google_cloud_pubsub-2.21.1-py2.py3-none-any.whl (273 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 273.2/273.2 KB 23.7 MB/s eta 0:00:00
Collecting google-cloud-aiplatform<2.0,>=1.26.0
  Downloading google_cloud_aiplatform-1.48.0-py2.py3-none-any.whl (4.8 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 4.8/4.8 MB 94.9 MB/s eta 0:00:00
Collecting google-cloud-bigquery-storage<3,>=2.6.3
  Downloading google_cloud_bigquery_storage-2.24.0-py2.py3-none-any.whl (190 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 190.6/190.6 KB 23.2 MB/s eta 0:00:00
Requirement already satisfied: cachetools<6,>=3.1.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (5.3.3)
Requirement already satisfied: google-api-core<3,>=2.0.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (2.18.0)
Requirement already satisfied: google-auth<3,>=1.18.0 in ./env/lib/python3.10/site-packages (from apache-beam[gcp]) (2.29.0)
Collecting google-cloud-videointelligence<3,>=2.0
  Downloading google_cloud_videointelligence-2.13.3-py2.py3-none-any.whl (240 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 240.4/240.4 KB 26.6 MB/s eta 0:00:00
Collecting google-cloud-bigtable<3,>=2.19.0
  Downloading google_cloud_bigtable-2.23.1-py2.py3-none-any.whl (356 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 356.8/356.8 KB 34.4 MB/s eta 0:00:00
Collecting google-auth-httplib2<0.2.0,>=0.1.0
  Downloading google_auth_httplib2-0.1.1-py2.py3-none-any.whl (9.3 kB)
Collecting google-cloud-spanner<4,>=3.0.0
  Downloading google_cloud_spanner-3.45.0-py2.py3-none-any.whl (357 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 357.5/357.5 KB 34.0 MB/s eta 0:00:00
Collecting google-cloud-dlp<4,>=3.0.0
  Downloading google_cloud_dlp-3.16.0-py2.py3-none-any.whl (167 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 167.3/167.3 KB 20.1 MB/s eta 0:00:00
Collecting google-cloud-language<3,>=2.0
  Downloading google_cloud_language-2.13.3-py2.py3-none-any.whl (143 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 143.7/143.7 KB 16.4 MB/s eta 0:00:00
Requirement already satisfied: googleapis-common-protos<2.0.dev0,>=1.56.2 in ./env/lib/python3.10/site-packages (from google-api-core<3,>=2.0.0->apache-beam[gcp]) (1.63.0)
Collecting oauth2client>=1.4.12
  Downloading oauth2client-4.1.3-py2.py3-none-any.whl (98 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 98.2/98.2 KB 11.1 MB/s eta 0:00:00
Collecting six>=1.12.0
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Requirement already satisfied: pyasn1-modules>=0.2.1 in ./env/lib/python3.10/site-packages (from google-auth<3,>=1.18.0->apache-beam[gcp]) (0.4.0)
Requirement already satisfied: rsa<5,>=3.1.4 in ./env/lib/python3.10/site-packages (from google-auth<3,>=1.18.0->apache-beam[gcp]) (4.9)
Collecting docstring-parser<1
  Downloading docstring_parser-0.16-py3-none-any.whl (36 kB)
Collecting shapely<3.0.0dev
  Downloading shapely-2.0.4-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (2.5 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.5/2.5 MB 93.2 MB/s eta 0:00:00
Collecting pydantic<3
  Downloading pydantic-2.7.1-py3-none-any.whl (409 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 409.3/409.3 KB 39.3 MB/s eta 0:00:00
Collecting google-cloud-resource-manager<3.0.0dev,>=1.3.3
  Downloading google_cloud_resource_manager-1.12.3-py2.py3-none-any.whl (333 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 333.7/333.7 KB 34.4 MB/s eta 0:00:00
Requirement already satisfied: google-resumable-media<3.0dev,>=0.6.0 in ./env/lib/python3.10/site-packages (from google-cloud-bigquery<4,>=2.0.0->apache-beam[gcp]) (2.7.0)
Collecting grpc-google-iam-v1<1.0.0dev,>=0.12.4
  Downloading grpc_google_iam_v1-0.13.0-py2.py3-none-any.whl (25 kB)
Collecting grpcio-status>=1.33.2
  Downloading grpcio_status-1.62.2-py3-none-any.whl (14 kB)
Collecting overrides<8.0.0,>=6.0.1
  Downloading overrides-7.7.0-py3-none-any.whl (17 kB)
Collecting grpc-interceptor>=0.15.4
  Downloading grpc_interceptor-0.15.4-py3-none-any.whl (20 kB)
Collecting sqlparse>=0.4.4
  Downloading sqlparse-0.5.0-py3-none-any.whl (43 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 44.0/44.0 KB 5.7 MB/s eta 0:00:00
Requirement already satisfied: google-crc32c<2.0dev,>=1.0 in ./env/lib/python3.10/site-packages (from google-cloud-storage<3,>=2.14.0->apache-beam[gcp]) (1.5.0)
Collecting docopt
  Downloading docopt-0.6.2.tar.gz (25 kB)
  Preparing metadata (setup.py) ... done
Collecting pyparsing!=3.0.0,!=3.0.1,!=3.0.2,!=3.0.3,<4,>=2.4.2
  Downloading pyparsing-3.1.2-py3-none-any.whl (103 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 103.2/103.2 KB 11.3 MB/s eta 0:00:00
Collecting pyjsparser>=2.5.1
  Downloading pyjsparser-2.7.1.tar.gz (24 kB)
  Preparing metadata (setup.py) ... done
Collecting tzlocal>=1.2
  Downloading tzlocal-5.2-py3-none-any.whl (17 kB)
Collecting attrs>=22.2.0
  Downloading attrs-23.2.0-py3-none-any.whl (60 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 60.8/60.8 KB 7.3 MB/s eta 0:00:00
Collecting rpds-py>=0.7.1
  Downloading rpds_py-0.18.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.1/1.1 MB 64.3 MB/s eta 0:00:00
Collecting referencing>=0.28.4
  Downloading referencing-0.35.0-py3-none-any.whl (26 kB)
Collecting jsonschema-specifications>=2023.03.6
  Downloading jsonschema_specifications-2023.12.1-py3-none-any.whl (18 kB)
Collecting dnspython<3.0.0,>=1.16.0
  Downloading dnspython-2.6.1-py3-none-any.whl (307 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 307.7/307.7 KB 28.7 MB/s eta 0:00:00
Requirement already satisfied: urllib3<3,>=1.21.1 in ./env/lib/python3.10/site-packages (from requests<3.0.0,>=2.24.0->apache-beam[gcp]) (2.2.1)
Requirement already satisfied: idna<4,>=2.5 in ./env/lib/python3.10/site-packages (from requests<3.0.0,>=2.24.0->apache-beam[gcp]) (3.7)
Requirement already satisfied: charset-normalizer<4,>=2 in ./env/lib/python3.10/site-packages (from requests<3.0.0,>=2.24.0->apache-beam[gcp]) (3.3.2)
Requirement already satisfied: certifi>=2017.4.17 in ./env/lib/python3.10/site-packages (from requests<3.0.0,>=2.24.0->apache-beam[gcp]) (2024.2.2)
Requirement already satisfied: pyasn1>=0.1.7 in ./env/lib/python3.10/site-packages (from oauth2client>=1.4.12->google-apitools<0.5.32,>=0.5.31->apache-beam[gcp]) (0.6.0)
Collecting annotated-types>=0.4.0
  Downloading annotated_types-0.6.0-py3-none-any.whl (12 kB)
Collecting pydantic-core==2.18.2
  Downloading pydantic_core-2.18.2-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (2.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 89.2 MB/s eta 0:00:00
Building wheels for collected packages: crcmod, dill, google-apitools, hdfs, pyjsparser, docopt
  Building wheel for crcmod (setup.py) ... done
  Created wheel for crcmod: filename=crcmod-1.7-cp310-cp310-linux_x86_64.whl size=31420 sha256=0e610edd23a92c4c95a78433f7f587e4ce257f62a5e486f099ad76f65bfb6aaa
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/85/4c/07/72215c529bd59d67e3dac29711d7aba1b692f543c808ba9e86
  Building wheel for dill (setup.py) ... done
  Created wheel for dill: filename=dill-0.3.1.1-py3-none-any.whl size=78542 sha256=800655be65bb8f5607cc3d1f29ed87b083e67fa9b651603204e489808e9cd99f
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/ea/e2/86/64980d90e297e7bf2ce588c2b96e818f5399c515c4bb8a7e4f
  Building wheel for google-apitools (setup.py) ... done
  Created wheel for google-apitools: filename=google_apitools-0.5.31-py3-none-any.whl size=131032 sha256=0dc77198a933694c22a8cb303a5d9034b4d877ef91461d093ac0f89c7c8b7206
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/04/b7/e0/9712f8c23a5da3d9d16fb88216b897bf60e85b12f5470f26ee
  Building wheel for hdfs (setup.py) ... done
  Created wheel for hdfs: filename=hdfs-2.7.3-py3-none-any.whl size=34342 sha256=1de10181f34fac31ccd68b6e55744b30867a8fb2a7b23946dd17ce971bf630a4
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/e5/8d/b6/99c1c0a3ac5788c866b0ecd3f48b0134a5910e6ed26011800b
  Building wheel for pyjsparser (setup.py) ... done
  Created wheel for pyjsparser: filename=pyjsparser-2.7.1-py3-none-any.whl size=26000 sha256=3ae0a0163e636a445e97671542c6f274371cd2955432ee3a023111047eec80c9
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/5e/81/26/5956478df303e2bf5a85a5df595bb307bd25948a4bab69f7c7
  Building wheel for docopt (setup.py) ... done
  Created wheel for docopt: filename=docopt-0.6.2-py2.py3-none-any.whl size=13722 sha256=5d4cce98a2d4568bc29b13c76ab464b899575e978264f621c18aac4183620d39
  Stored in directory: /home/gaussjatta1/.cache/pip/wheels/fc/ab/d4/5da2067ac95b36618c629a5f93f809425700506f72c9732fac
Successfully built crcmod dill google-apitools hdfs pyjsparser docopt
Installing collected packages: pytz, pyjsparser, docopt, crcmod, zstandard, tzlocal, typing-extensions, sqlparse, six, rpds-py, regex, pyparsing, pyarrow-hotfix, packaging, overrides, orjson, objsize, numpy, jsonpickle, grpcio, fasteners, fastavro, docstring-parser, dnspython, dill, cloudpickle, attrs, annotated-types, shapely, referencing, python-dateutil, pymongo, pydot, pydantic-core, pyarrow, js2py, httplib2, hdfs, grpcio-status, grpc-interceptor, pydantic, oauth2client, jsonschema-specifications, grpc-google-iam-v1, google-auth-httplib2, jsonschema, google-apitools, google-cloud-vision, google-cloud-videointelligence, google-cloud-spanner, google-cloud-resource-manager, google-cloud-recommendations-ai, google-cloud-pubsub, google-cloud-language, google-cloud-dlp, google-cloud-datastore, google-cloud-bigtable, google-cloud-bigquery-storage, google-cloud-bigquery, apache-beam, google-cloud-pubsublite, google-cloud-aiplatform
Successfully installed annotated-types-0.6.0 apache-beam-2.55.1 attrs-23.2.0 cloudpickle-2.2.1 crcmod-1.7 dill-0.3.1.1 dnspython-2.6.1 docopt-0.6.2 docstring-parser-0.16 fastavro-1.9.4 fasteners-0.19 google-apitools-0.5.31 google-auth-httplib2-0.1.1 google-cloud-aiplatform-1.48.0 google-cloud-bigquery-3.21.0 google-cloud-bigquery-storage-2.24.0 google-cloud-bigtable-2.23.1 google-cloud-datastore-2.19.0 google-cloud-dlp-3.16.0 google-cloud-language-2.13.3 google-cloud-pubsub-2.21.1 google-cloud-pubsublite-1.10.0 google-cloud-recommendations-ai-0.10.10 google-cloud-resource-manager-1.12.3 google-cloud-spanner-3.45.0 google-cloud-videointelligence-2.13.3 google-cloud-vision-3.7.2 grpc-google-iam-v1-0.13.0 grpc-interceptor-0.15.4 grpcio-1.62.2 grpcio-status-1.62.2 hdfs-2.7.3 httplib2-0.22.0 js2py-0.74 jsonpickle-3.0.4 jsonschema-4.21.1 jsonschema-specifications-2023.12.1 numpy-1.26.4 oauth2client-4.1.3 objsize-0.7.0 orjson-3.10.1 overrides-7.7.0 packaging-24.0 pyarrow-14.0.2 pyarrow-hotfix-0.6 pydantic-2.7.1 pydantic-core-2.18.2 pydot-1.4.2 pyjsparser-2.7.1 pymongo-4.7.0 pyparsing-3.1.2 python-dateutil-2.9.0.post0 pytz-2024.1 referencing-0.35.0 regex-2024.4.16 rpds-py-0.18.0 shapely-2.0.4 six-1.16.0 sqlparse-0.5.0 typing-extensions-4.11.0 tzlocal-5.2 zstandard-0.22.0

------------ Execute my pipeline : 
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python -m apache_beam.examples.wordcount \
  --output outputs
INFO:root:Missing pipeline option (runner). Executing pipeline using the default runner: DirectRunner.
INFO:apache_beam.internal.gcp.auth:Setting socket default timeout to 60 seconds.
INFO:apache_beam.internal.gcp.auth:socket default timeout is 60.0 seconds.
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function annotate_downstream_side_inputs at 0x7f6fafbe3400> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function fix_side_input_pcoll_coders at 0x7f6fafbe3520> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function pack_combiners at 0x7f6fafbe3a30> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function lift_combiners at 0x7f6fafbe3ac0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_sdf at 0x7f6fafbe3c70> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_gbk at 0x7f6fafbe3d00> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sink_flattens at 0x7f6fafbe3e20> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function greedily_fuse at 0x7f6fafbe3eb0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function read_to_impulse at 0x7f6fafbe3f40> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function impulse_to_input at 0x7f6fafbe8040> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sort_stages at 0x7f6fafbe8280> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function add_impulse_to_dangling_transforms at 0x7f6fafbe83a0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function setup_timer_mapping at 0x7f6fafbe81f0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function populate_data_channel_coders at 0x7f6fafbe8310> ====================
INFO:apache_beam.runners.worker.statecache:Creating state cache with size 104857600
INFO:apache_beam.runners.portability.fn_api_runner.worker_handlers:Created Worker handler <apache_beam.runners.portability.fn_api_runner.worker_handlers.EmbeddedWorkerHandler object at 0x7f6faf9a6f20> for environment ref_Environment_default_environment_1 (beam:env:embedded_python:v1, b'')
INFO:apache_beam.io.filebasedsink:Starting finalize_write threads with num_shards: 1 (skipped: 0), batches: 1, num_threads: 1
INFO:apache_beam.io.filebasedsink:Renamed 1 shards in 0.01 seconds.

------------- Show the outputs :
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ more outputs*
KING: 243
LEAR: 236
DRAMATIS: 1
PERSONAE: 1
king: 65
of: 447
Britain: 2
OF: 15
FRANCE: 10
DUKE: 3
BURGUNDY: 8
CORNWALL: 63
ALBANY: 67
EARL: 2
KENT: 156
GLOUCESTER: 141
EDGAR: 126
son: 29
to: 438
Gloucester: 26
EDMUND: 99
bastard: 7
CURAN: 6
a: 366
courtier: 1
Old: 13
Man: 11
tenant: 3
Doctor: 12
Fool: 73
OSWALD: 53
steward: 2
Goneril: 12
A: 51
Captain: 12
employed: 1
by: 69
Edmund: 32
Gentleman: 48
attendant: 1
on: 93
Cordelia: 22
Herald: 6

---------------- Execute a pipeline :

(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python -m apache_beam.examples.wordcount \
    --region europe-west9 \
    --input gs://dataflow-samples/shakespeare/kinglear.txt \
    --output gs://gaussstoragebucket/output/results/outputs \
    --runner DataflowRunner \
    --project atlantean-wares-421508 \
    --temp_location gs://gaussstoragebucket/output/tmp/
INFO:apache_beam.internal.gcp.auth:Setting socket default timeout to 60 seconds.
INFO:apache_beam.internal.gcp.auth:socket default timeout is 60.0 seconds.
INFO:apache_beam.runners.dataflow.dataflow_runner:Pipeline has additional dependencies to be installed in SDK worker container, consider using the SDK container image pre-building workflow to avoid repetitive installations. Learn more on https://cloud.google.com/dataflow/docs/guides/using-custom-containers#prebuild
INFO:root:Using provided Python SDK container image: gcr.io/cloud-dataflow/v1beta3/beam_python3.10_sdk:2.55.1
INFO:root:Python SDK container image set to "gcr.io/cloud-dataflow/v1beta3/beam_python3.10_sdk:2.55.1" for Docker environment
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function pack_combiners at 0x7d1cf9dddc60> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sort_stages at 0x7d1cf9dde440> ====================
INFO:apache_beam.runners.dataflow.internal.apiclient:Starting GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427213440-949257-05az4ftp.1714253680.949368/pickled_main_session...
INFO:apache_beam.runners.dataflow.internal.apiclient:Completed GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427213440-949257-05az4ftp.1714253680.949368/pickled_main_session in 0 seconds.
INFO:apache_beam.runners.dataflow.internal.apiclient:Starting GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427213440-949257-05az4ftp.1714253680.949368/pipeline.pb...
INFO:apache_beam.runners.dataflow.internal.apiclient:Completed GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427213440-949257-05az4ftp.1714253680.949368/pipeline.pb in 0 seconds.
INFO:apache_beam.runners.dataflow.internal.apiclient:Create job: <Job
 clientRequestId: '20240427213440950050-2715'
 createTime: '2024-04-27T21:34:43.329899Z'
 currentStateTime: '1970-01-01T00:00:00Z'
 id: '2024-04-27_14_34_41-15368285970572376633'
 location: 'europe-west9'
 name: 'beamapp-gaussjatta1-0427213440-949257-05az4ftp'
 projectId: 'atlantean-wares-421508'
 stageStates: []
 startTime: '2024-04-27T21:34:43.329899Z'
 steps: []
 tempFiles: []
 type: TypeValueValuesEnum(JOB_TYPE_BATCH, 1)>
INFO:apache_beam.runners.dataflow.internal.apiclient:Created job with id: [2024-04-27_14_34_41-15368285970572376633]
INFO:apache_beam.runners.dataflow.internal.apiclient:Submitted job: 2024-04-27_14_34_41-15368285970572376633
INFO:apache_beam.runners.dataflow.internal.apiclient:To access the Dataflow monitoring console, please navigate to https://console.cloud.google.com/dataflow/jobs/europe-west9/2024-04-27_14_34_41-15368285970572376633?project=atlantean-wares-421508
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_34_41-15368285970572376633 is in state JOB_STATE_PENDING
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:34:45.806Z: JOB_MESSAGE_BASIC: Worker configuration: e2-standard-2 in europe-west9-a.
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:34:47.534Z: JOB_MESSAGE_BASIC: Executing operation Read/Read/Impulse+Read/Read/EmitSource+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/PairWithRestriction+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/SplitWithSizing
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:34:47.556Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/DoOnce/Impulse+Write/Write/WriteImpl/DoOnce/FlatMap(<lambda at core.py:3782>)+Write/Write/WriteImpl/DoOnce/Map(decode)+Write/Write/WriteImpl/InitializeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:34:47.582Z: JOB_MESSAGE_BASIC: Starting 1 workers in europe-west9...
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_34_41-15368285970572376633 is in state JOB_STATE_RUNNING
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:06.564Z: JOB_MESSAGE_BASIC: All workers have finished the startup processes and began to receive work requests.
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.169Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/DoOnce/Impulse+Write/Write/WriteImpl/DoOnce/FlatMap(<lambda at core.py:3782>)+Write/Write/WriteImpl/DoOnce/Map(decode)+Write/Write/WriteImpl/InitializeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.255Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/WriteBundles/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.269Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.283Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.290Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/WriteBundles/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.306Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.322Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.621Z: JOB_MESSAGE_BASIC: Finished operation Read/Read/Impulse+Read/Read/EmitSource+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/PairWithRestriction+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/SplitWithSizing
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.685Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.895Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:07.965Z: JOB_MESSAGE_BASIC: Executing operation ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/ProcessElementAndRestrictionWithSizing+Split+PairWithOne+GroupAndSum/GroupByKey+GroupAndSum/Combine/Partial+GroupAndSum/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.133Z: JOB_MESSAGE_BASIC: Finished operation ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/ProcessElementAndRestrictionWithSizing+Split+PairWithOne+GroupAndSum/GroupByKey+GroupAndSum/Combine/Partial+GroupAndSum/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.163Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.246Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.278Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.347Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:09.413Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Read+GroupAndSum/Combine+GroupAndSum/Combine/Extract+Format+Write/Write/WriteImpl/WindowInto(WindowIntoFn)+Write/Write/WriteImpl/WriteBundles+Write/Write/WriteImpl/Pair+Write/Write/WriteImpl/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.023Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Read+GroupAndSum/Combine+GroupAndSum/Combine/Extract+Format+Write/Write/WriteImpl/WindowInto(WindowIntoFn)+Write/Write/WriteImpl/WriteBundles+Write/Write/WriteImpl/Pair+Write/Write/WriteImpl/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.055Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.145Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.180Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Read+Write/Write/WriteImpl/Extract
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.831Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Read+Write/Write/WriteImpl/Extract
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.906Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.917Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.942Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:10.947Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:11.027Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:12.004Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:12.070Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input2
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:12.106Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input2
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:12.175Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:13.080Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:13.194Z: JOB_MESSAGE_BASIC: Stopping worker pool...
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:38:43.629Z: JOB_MESSAGE_BASIC: Worker pool stopped.
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_34_41-15368285970572376633 is in state JOB_STATE_DONE
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python wordcount.py --output outputs
INFO:root:Missing pipeline option (runner). Executing pipeline using the default runner: DirectRunner.
INFO:apache_beam.internal.gcp.auth:Setting socket default timeout to 60 seconds.
INFO:apache_beam.internal.gcp.auth:socket default timeout is 60.0 seconds.
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function annotate_downstream_side_inputs at 0x7d6a66b6e680> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function fix_side_input_pcoll_coders at 0x7d6a66b6e7a0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function pack_combiners at 0x7d6a66b6ecb0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function lift_combiners at 0x7d6a66b6ed40> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_sdf at 0x7d6a66b6eef0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_gbk at 0x7d6a66b6ef80> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sink_flattens at 0x7d6a66b6f0a0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function greedily_fuse at 0x7d6a66b6f130> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function read_to_impulse at 0x7d6a66b6f1c0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function impulse_to_input at 0x7d6a66b6f250> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sort_stages at 0x7d6a66b6f490> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function add_impulse_to_dangling_transforms at 0x7d6a66b6f5b0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function setup_timer_mapping at 0x7d6a66b6f400> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function populate_data_channel_coders at 0x7d6a66b6f520> ====================
INFO:apache_beam.runners.worker.statecache:Creating state cache with size 104857600
INFO:apache_beam.runners.portability.fn_api_runner.worker_handlers:Created Worker handler <apache_beam.runners.portability.fn_api_runner.worker_handlers.EmbeddedWorkerHandler object at 0x7d6a668e9930> for environment ref_Environment_default_environment_1 (beam:env:embedded_python:v1, b'')
INFO:apache_beam.io.filebasedsink:Starting finalize_write threads with num_shards: 1 (skipped: 0), batches: 1, num_threads: 1
INFO:apache_beam.io.filebasedsink:Renamed 1 shards in 0.00 seconds.
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ more outputs*
KING: 243
LEAR: 236
DRAMATIS: 1
PERSONAE: 1
king: 65
of: 447
Britain: 2
OF: 15
FRANCE: 10
DUKE: 3
BURGUNDY: 8
CORNWALL: 63
ALBANY: 67
EARL: 2
KENT: 156
GLOUCESTER: 141
EDGAR: 126
son: 29
to: 438
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python wordcount.py --output outputs
INFO:root:Missing pipeline option (runner). Executing pipeline using the default runner: DirectRunner.
INFO:apache_beam.internal.gcp.auth:Setting socket default timeout to 60 seconds.
INFO:apache_beam.internal.gcp.auth:socket default timeout is 60.0 seconds.
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function annotate_downstream_side_inputs at 0x7926ed656830> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function fix_side_input_pcoll_coders at 0x7926ed656950> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function pack_combiners at 0x7926ed656e60> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function lift_combiners at 0x7926ed656ef0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_sdf at 0x7926ed6570a0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function expand_gbk at 0x7926ed657130> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sink_flattens at 0x7926ed657250> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function greedily_fuse at 0x7926ed6572e0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function read_to_impulse at 0x7926ed657370> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function impulse_to_input at 0x7926ed657400> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sort_stages at 0x7926ed657640> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function add_impulse_to_dangling_transforms at 0x7926ed657760> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function setup_timer_mapping at 0x7926ed6575b0> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function populate_data_channel_coders at 0x7926ed6576d0> ====================
INFO:apache_beam.runners.worker.statecache:Creating state cache with size 104857600
INFO:apache_beam.runners.portability.fn_api_runner.worker_handlers:Created Worker handler <apache_beam.runners.portability.fn_api_runner.worker_handlers.EmbeddedWorkerHandler object at 0x7926ed3f94e0> for environment ref_Environment_default_environment_1 (beam:env:embedded_python:v1, b'')
INFO:apache_beam.io.filebasedsink:Starting finalize_write threads with num_shards: 1 (skipped: 0), batches: 1, num_threads: 1
INFO:apache_beam.io.filebasedsink:Renamed 1 shards in 0.00 seconds.
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ more outputs*
king: 311
lear: 253
dramatis: 1
personae: 1
of: 483
britain: 2
france: 32
duke: 26
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ python wordcount.py \
    --region europe-west9 \
    --input gs://dataflow-samples/shakespeare/kinglear.txt \
    --output gs://gaussstoragebucket/output/results/outputs \
    --runner DataflowRunner \
    --project atlantean-wares-421508 \
    --temp_location gs://gaussstoragebucket/output/tmp/
INFO:apache_beam.internal.gcp.auth:Setting socket default timeout to 60 seconds.
INFO:apache_beam.internal.gcp.auth:socket default timeout is 60.0 seconds.
INFO:apache_beam.runners.dataflow.dataflow_runner:Pipeline has additional dependencies to be installed in SDK worker container, consider using the SDK container image pre-building workflow to avoid repetitive installations. Learn more on https://cloud.google.com/dataflow/docs/guides/using-custom-containers#prebuild
INFO:root:Using provided Python SDK container image: gcr.io/cloud-dataflow/v1beta3/beam_python3.10_sdk:2.55.1
INFO:root:Python SDK container image set to "gcr.io/cloud-dataflow/v1beta3/beam_python3.10_sdk:2.55.1" for Docker environment
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function pack_combiners at 0x7c736fbd5090> ====================
INFO:apache_beam.runners.portability.fn_api_runner.translations:==================== <function sort_stages at 0x7c736fbd5870> ====================
INFO:apache_beam.runners.dataflow.internal.apiclient:Starting GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427214735-382584-apdcpfy2.1714254455.382692/pickled_main_session...
INFO:apache_beam.runners.dataflow.internal.apiclient:Completed GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427214735-382584-apdcpfy2.1714254455.382692/pickled_main_session in 0 seconds.
INFO:apache_beam.runners.dataflow.internal.apiclient:Starting GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427214735-382584-apdcpfy2.1714254455.382692/pipeline.pb...
INFO:apache_beam.runners.dataflow.internal.apiclient:Completed GCS upload to gs://gaussstoragebucket/output/tmp/beamapp-gaussjatta1-0427214735-382584-apdcpfy2.1714254455.382692/pipeline.pb in 0 seconds.
INFO:apache_beam.runners.dataflow.internal.apiclient:Create job: <Job
 clientRequestId: '20240427214735383465-8285'
 createTime: '2024-04-27T21:47:36.344563Z'
 currentStateTime: '1970-01-01T00:00:00Z'
 id: '2024-04-27_14_47_35-6147591557057595169'
 location: 'europe-west9'
 name: 'beamapp-gaussjatta1-0427214735-382584-apdcpfy2'
 projectId: 'atlantean-wares-421508'
 stageStates: []
 startTime: '2024-04-27T21:47:36.344563Z'
 steps: []
 tempFiles: []
 type: TypeValueValuesEnum(JOB_TYPE_BATCH, 1)>
INFO:apache_beam.runners.dataflow.internal.apiclient:Created job with id: [2024-04-27_14_47_35-6147591557057595169]
INFO:apache_beam.runners.dataflow.internal.apiclient:Submitted job: 2024-04-27_14_47_35-6147591557057595169
INFO:apache_beam.runners.dataflow.internal.apiclient:To access the Dataflow monitoring console, please navigate to https://console.cloud.google.com/dataflow/jobs/europe-west9/2024-04-27_14_47_35-6147591557057595169?project=atlantean-wares-421508
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_47_35-6147591557057595169 is in state JOB_STATE_PENDING
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:47:38.755Z: JOB_MESSAGE_BASIC: Worker configuration: e2-standard-2 in europe-west9-c.
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:47:40.896Z: JOB_MESSAGE_BASIC: Executing operation Read/Read/Impulse+Read/Read/EmitSource+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/PairWithRestriction+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/SplitWithSizing
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:47:40.915Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/DoOnce/Impulse+Write/Write/WriteImpl/DoOnce/FlatMap(<lambda at core.py:3782>)+Write/Write/WriteImpl/DoOnce/Map(decode)+Write/Write/WriteImpl/InitializeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:47:40.942Z: JOB_MESSAGE_BASIC: Starting 1 workers in europe-west9...
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_47_35-6147591557057595169 is in state JOB_STATE_RUNNING
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:41.897Z: JOB_MESSAGE_BASIC: All workers have finished the startup processes and began to receive work requests.
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.518Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/DoOnce/Impulse+Write/Write/WriteImpl/DoOnce/FlatMap(<lambda at core.py:3782>)+Write/Write/WriteImpl/DoOnce/Map(decode)+Write/Write/WriteImpl/InitializeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.621Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/WriteBundles/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.638Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.654Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/WriteBundles/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.656Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.674Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.689Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize/View-python_side_input0
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.880Z: JOB_MESSAGE_BASIC: Finished operation Read/Read/Impulse+Read/Read/EmitSource+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/PairWithRestriction+ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/SplitWithSizing
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:42.954Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:43.207Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:43.280Z: JOB_MESSAGE_BASIC: Executing operation ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/ProcessElementAndRestrictionWithSizing+Split+lowercase+PairWithOne+GroupAndSum/GroupByKey+GroupAndSum/Combine/Partial+GroupAndSum/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.491Z: JOB_MESSAGE_BASIC: Finished operation ref_AppliedPTransform_Read-Read-SDFBoundedSourceReader-ParDo-SDFBoundedSourceDoFn-_7/ProcessElementAndRestrictionWithSizing+Split+lowercase+PairWithOne+GroupAndSum/GroupByKey+GroupAndSum/Combine/Partial+GroupAndSum/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.526Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.565Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.596Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.682Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Create
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:44.781Z: JOB_MESSAGE_BASIC: Executing operation GroupAndSum/GroupByKey/Read+GroupAndSum/Combine+GroupAndSum/Combine/Extract+Format+Write/Write/WriteImpl/WindowInto(WindowIntoFn)+Write/Write/WriteImpl/WriteBundles+Write/Write/WriteImpl/Pair+Write/Write/WriteImpl/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:45.404Z: JOB_MESSAGE_BASIC: Finished operation GroupAndSum/GroupByKey/Read+GroupAndSum/Combine+GroupAndSum/Combine/Extract+Format+Write/Write/WriteImpl/WindowInto(WindowIntoFn)+Write/Write/WriteImpl/WriteBundles+Write/Write/WriteImpl/Pair+Write/Write/WriteImpl/GroupByKey/Write
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:45.439Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:45.495Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Close
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:45.531Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/GroupByKey/Read+Write/Write/WriteImpl/Extract
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.159Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/GroupByKey/Read+Write/Write/WriteImpl/Extract
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.244Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.274Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.276Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.306Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize/View-python_side_input1
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:46.388Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/PreFinalize
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:47.576Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/PreFinalize
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:47.649Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input2
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:47.683Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite/View-python_side_input2
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:47.755Z: JOB_MESSAGE_BASIC: Executing operation Write/Write/WriteImpl/FinalizeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:48.672Z: JOB_MESSAGE_BASIC: Finished operation Write/Write/WriteImpl/FinalizeWrite
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:50:48.780Z: JOB_MESSAGE_BASIC: Stopping worker pool...
INFO:apache_beam.runners.dataflow.dataflow_runner:2024-04-27T21:51:21.218Z: JOB_MESSAGE_BASIC: Worker pool stopped.
INFO:apache_beam.runners.dataflow.dataflow_runner:Job 2024-04-27_14_47_35-6147591557057595169 is in state JOB_STATE_DONE
(env) gaussjatta1@cloudshell:~/Dataflow (atlantean-wares-421508)$ 