# GCP_Data_Engineering

![Capture d’écran 2024-04-28 191003](https://github.com/GDIATTA/GCP_Data_Engineering/assets/147615966/fb840ecf-7eb7-4f31-8f9a-c4b961166fb8)

### Chapter1: -------------------------- BigQuery  ---------------------------------:
BigQuery is Google Cloud's fully managed, petabyte-scale, and cost-effective analytics data warehouse that lets you run analytics over vast amounts of data in near real time. With BigQuery, there's no infrastructure to set up or manage, letting you focus on finding meaningful insights using GoogleSQL and taking advantage of flexible pricing models across on-demand and flat-rate options.<br>

There are several ways to ingest data into BigQuery:<br>
> Batch load a set of data records.<br>
> Stream individual records or batches of records.<br>
> Use queries to generate new data and append or overwrite the results to a table.<br>
> Use a third-party application or service.<br>

#### ---------------------------- Batch loading data ------------------------------:
With batch loading, you load the source data into a BigQuery table in a single batch operation. For example, the data source could be a CSV file, an external database, or a set of log files. Traditional extract, transform, and load (ETL) jobs fall into this category.<br>

Get started : <br>
1. Open the BigQuery page in the Google Cloud console(Go to the BigQuery page).<br>
2. Once BigQuery opened, in Explorer, select on the ID project and then choose create Dataset.<br>
![Capture d’écran 2024-08-01 115931](https://github.com/user-attachments/assets/815bf06c-b539-46f0-9a8d-adafa167a847)
3. On you right, a Windows opened to prompt to fullfill, as follows:<br>
> In ID project, give a name for ID Dataset.<br>
> In Location, choose Region or Multi-region and select the region that you want to store your Dataset.<br>
> In Schedule, set the number of days of your table if you activate the expiration of your table.<br>
> Next, click on "create Dataset".<br>
![Capture d’écran 2024-08-01 121214](https://github.com/user-attachments/assets/debab317-d8b6-48ec-9c84-4ae977d66a21)

4. Once the Dataset created, find it to click on to create a table as follow :<br>
> In source, choose **Google Cloud Storage** from the options(empty table, Google Cloud Storage, Import, Drive, Google Bigtable, Amazon S3, Azure Blob Storage).<br>
> Browse to select the source file and choose the file format.<br>
> In the Destination section, select the project ID, the dataset that contains the table, and set the table name.<br>
> In the Schema section, select "Automatically detect."<br>
> Leave other options as default and click on "Create Table."<br>
![Capture d’écran 2024-08-01 122547](https://github.com/user-attachments/assets/15a5a6b6-ee23-4e2f-9656-3d24431d8b37)

5. Once the table is created, click on it to open, make a query, or create a notebook.<br>
![Capture d’écran 2024-08-01 123513](https://github.com/user-attachments/assets/688b5642-68d4-4ce8-9750-27736fb93f8a)
![Capture d’écran 2024-08-01 160317](https://github.com/user-attachments/assets/b095d264-7f72-4f0b-9c38-bccf26edb346)

#### ---------------------------- Use a third-party application or service -----------------------------------:
Get started :

1. Open your IDE, Vs Code is used for this tutorial and then create workspace folder.<br>
2. Check if you have **virtualenv**. Else you will set up it. <br>
  ![Capture d’écran 2024-08-01 144538](https://github.com/user-attachments/assets/58433284-09f2-431e-930c-6816aa2bce87)

3. Set up your virtual environment by using **virtualenv venv** and then **activate** it. <br>
4. Set up the library **google cloud bigquery** by using as follow on this picture. <br>
    ![Capture d’écran 2024-08-01 150232](https://github.com/user-attachments/assets/5ef90633-9da4-4832-b992-d9034050b542)
5. Create a python script to ingest data into bigquery, as follow: <br>
   ![Capture d’écran 2024-08-01 150426](https://github.com/user-attachments/assets/ab3f8160-b5ca-4465-9d52-4131641aa9b5)
   ![Capture d’écran 2024-08-01 152136](https://github.com/user-attachments/assets/174e9b99-28de-4129-a75e-24578a9c101c)


#### ------------------------ Stream individual records or batches of records -----------------------------:

Get started : <br>

1. On your left, click on **Data Transfer**, then select **create a transfer** and enable **API Data Transfer**.<br>

  ![Capture d’écran 2024-08-06 163254](https://github.com/user-attachments/assets/651a3a05-9c05-497c-ae8e-7c28a21d9bf3)
  ![Capture d’écran 2024-08-06 163404](https://github.com/user-attachments/assets/e3f6f8f3-60d4-4e30-8778-5967846aef3d)

2. For **Type of source**, choose the desired source.In this tutorial, choose **Google Cloud Storage**.<br>

  ![Capture d’écran 2024-08-06 163601](https://github.com/user-attachments/assets/ab0c2709-eb3a-4dbd-879e-f3dc0425efae)
  
3. In **Transfer Setting Name**, enter a name for the transfer.<br>
4. For **Freqency of Data Collection**, choose **On Demande**.<br>
5. In **Destination configuration**, choose a **Dataset**.<br>

  ![Capture d’écran 2024-08-06 164951](https://github.com/user-attachments/assets/e6576c47-798d-4b20-9947-6083caecae8c)
  
6. In **Data Source Details**,follow these steps :<br>
>  Set a **Destination table**.<br>
>  For **Cloud Storage URI**, browser your directory and set the path that contains all files to transfer.<br>
>  For **Write preference**, choose one of the optional (**APPEND**, **MIRROR**).<br>
>  For **File format**, select the appropriate file format.<br>

![Capture d’écran 2024-08-06 165031](https://github.com/user-attachments/assets/31362844-e615-4838-b421-ddb9c7b66759)

7. In **Format type**, complete the following :<br>
> Set the **field delimiter**.<br>
> Set the **Header Rows to skip**.<br>

![Capture d’écran 2024-08-06 165111](https://github.com/user-attachments/assets/151472bf-76ee-47c2-9fce-ec294ecbd205)

8. Leave other options as default and click on **Save**.<br>

![Capture d’écran 2024-08-06 165137](https://github.com/user-attachments/assets/f4f14f89-a247-4b76-98d7-349cd8f92003)
9. On the top right, select **execute transfer**.<br>

![Capture d’écran 2024-08-06 165528](https://github.com/user-attachments/assets/ce7ef00f-2b89-43cd-8632-64f7a4430526)
![Capture d’écran 2024-08-06 165618](https://github.com/user-attachments/assets/cb34e84b-33dc-4e15-900b-9b790956183f)
![Capture d’écran 2024-08-06 170026](https://github.com/user-attachments/assets/a0632774-236c-4bd1-b697-035672e33f3f)

In **BigQuery**, we can create **a programm request** and **repository**.<br>

![Capture d’écran 2024-08-06 170348](https://github.com/user-attachments/assets/f54d0e23-581e-4e95-b111-fdf972cfd945)
![Capture d’écran 2024-08-06 170436](https://github.com/user-attachments/assets/b0e678ee-3515-4b07-a5f0-d3eb3f1cc0be)

#### Chapter2: --------------- Data Transformation in BigQuery--------------------------:

This tutorial describes the different ways you can transform data in your BigQuery tables.<br>


##### Methods of transforming data <br>

You can transform data in BigQuery in the following ways:<br>
> Use **data manipulation language(DML)** to transform data in your BigQuery tables<br>
> Use **Dataform** to develop, test, control versions and Schedule SQL workflows in BigQuery.<br>

1. **Transform data with DML**<br>
You can use **data manipulation language (DML)** to transform data in your BigQuery tables. DML statements are GoogleSQL queries that manipulate existing table data to **add or delete rows, modify data in existing rows, or merge data with values from another table**. **DML** transformations are also supported in partitioned tables.<br>

You can run multiple **DML** statements concurrently, where BigQuery queues several **DML** statements that transform your data one after the other. BigQuery manages how concurrent **DML** statements are run, based upon the transformation type.<br>

For practice with this **DML**, you can use the scripts in the BigQuery folder of this repository. However, to use them as I do, you'll need to **generate a credentials file configured with permissions to edit, update, create, and delete in BigQuery**. 
This do itself as follow:
> Open the **IAM and Admin** an select **Service account**.
> Click on **create a service account**.

![Capture d’écran 2024-08-08 135139](https://github.com/user-attachments/assets/7513cbd0-e503-42a2-82bf-aa1a249c1779)

> In the **service account details** window:
>> Set a name for the service account.
>> Provide a description(optional), then click **Create and continue**.

![Capture d’écran 2024-08-08 140301](https://github.com/user-attachments/assets/054ba2e9-4c6d-42f8-8459-6196c3e199fc)

> In **Grant this service account access to the project** section, add a relevant **role** and click **Continue**.

![Capture d’écran 2024-08-08 140457](https://github.com/user-attachments/assets/51e83caf-0547-4b51-8b71-2e2cfc1dc533)

> Leave the remaining settings as they are(optional), and click **Ok**.

![Capture d’écran 2024-08-08 140536](https://github.com/user-attachments/assets/71f4e50e-ef6b-4480-b52d-cb240b3de81c)

> In the next window, on the right click to **Create a key**.

![Capture d’écran 2024-08-08 140630](https://github.com/user-attachments/assets/1941ae22-fee5-46ca-b514-53d24461cfcf)

> Choose **Add a key** and then choose **Create a new key** and **Create** to generate the key.

![Capture d’écran 2024-08-08 140721](https://github.com/user-attachments/assets/cf2bd54a-738b-4ad6-a774-6c7b677136ab)
![Capture d’écran 2024-08-08 140757](https://github.com/user-attachments/assets/1c1cb532-faf5-4b63-be62-00cc4d92209f)
![Capture d’écran 2024-08-08 140829](https://github.com/user-attachments/assets/44554394-b9db-4617-a7d0-741fe1d85363)






