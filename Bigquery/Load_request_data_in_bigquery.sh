-------------- How to load and request data in bigquery using cloud shell ---------------- :

Welcome to Cloud Shell! Type "help" to get started.
To set your Cloud Platform project in this session use “gcloud config set project [PROJECT_ID]”

-------- to list my directory :
gaussjatta1@cloudshell:~$ ls
names  README-cloudshell.txt
-------- to identify with my project id :
gaussjatta1@cloudshell:~$ gcloud config set project atlantean-wares-421508
Updated property [core/project].
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ ls
names  README-cloudshell.txt
--------- when I identifyed well, I can list my datasets :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq ls
     datasetId      
 ------------------ 
  austin_bikeshare  
  babynames         
  babysitteurs 

------------  I load the file yob2010.txt in names in my dataset and then create a table names2010 inside :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq load babynames.names2010 yob2010.txt name:string,assigned_sex_at_birth:string,count:integer
BigQuery error in load operation: Source file not found: yob2010.txt
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq load babynames.names2010 names/yob2010.txt name:string,assigned_sex_at_birth:string,count:integer
Upload complete.
Waiting on bqjob_r534bac1b6d8217c1_0000018f1b8e7241_1 ... (1s) Current status: DONE   

------------- I show informations of my table :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq show babynames.names2010
Table atlantean-wares-421508:babynames.names2010

   Last modified                 Schema                Total Rows   Total Bytes   Expiration   Time Partitioning   Clustered Fields   Total Logical Bytes   Total Physical Bytes   Labels  
 ----------------- ---------------------------------- ------------ ------------- ------------ ------------------- ------------------ --------------------- ---------------------- -------- 
  26 Apr 17:57:54   |- name: string                    34098        654967                                                            654967                                               
                    |- assigned_sex_at_birth: string                                                                                                                                       
                    |- count: integer                                                                                                                                                      

---------------------- Show the firstname of girl more populate :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq query --use_legacy_sql=false \
    'SELECT
      name,
      count
    FROM
      `babynames.names2010`
    WHERE
      assigned_sex_at_birth = "F"
    ORDER BY
      count DESC
    LIMIT 5;'
+----------+-------+
|   name   | count |
+----------+-------+
| Isabella | 22929 |
| Sophia   | 20652 |
| Emma     | 17357 |
| Olivia   | 17033 |
| Ava      | 15438 |
+----------+-------+

-------------------- Show the firstname of boy less populate :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq query --use_legacy_sql=false \
    'SELECT
      name,
      count
    FROM
      `babynames.names2010`
    WHERE
      assigned_sex_at_birth = "M"
    ORDER BY
      count ASC
    LIMIT 5;'
+----------+-------+
|   name   | count |
+----------+-------+
| Aamarion |     5 |
| Aarian   |     5 |
| Aaqib    |     5 |
| Aaidan   |     5 |
| Aadhavan |     5 |
+----------+-------+

---------------- Remove dataset babynames :
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ bq rm --recursive=true babynames
rm: remove dataset 'atlantean-wares-421508:babynames'? (y/N) y                                                               
gaussjatta1@cloudshell:~ (atlantean-wares-421508)$ 