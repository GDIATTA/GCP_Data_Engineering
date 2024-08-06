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

5. Once the table is created, click on it to open, make a query, or create a notebook.<br>





