![image](https://github.com/user-attachments/assets/01cd9b9c-c750-4520-99b7-15cb16e8a219)# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

# Steps to create Project

## Step 1: Create Project
 Execute the command `cds init bookshop`, then project will get created with below empty folder (Project can also be created from the `Project from Template` option)

 
![image](https://github.com/user-attachments/assets/da651397-f482-4ec5-b5f1-70dee347ff04)

## Step 2: Add database and servie file
 Create a file in `db` and `srv` folder and add the code as below screen shot. 

 ![image](https://github.com/user-attachments/assets/47845ae6-c17f-4be8-9ccc-938ef2ad0309)

Execute the application `npm start` or `cds watch`

![image](https://github.com/user-attachments/assets/c178c173-49ec-4c23-83a8-d1883cf3abc0)  ![image](https://github.com/user-attachments/assets/4e1fa4fb-0380-46d0-b814-af5d4f43948b)


## Step 3: Add Association between entity

![image](https://github.com/user-attachments/assets/44a41e9a-65db-467a-9aa3-322465c391d9)

## Step 4: Add `sqlite3` databse into the project

1. Add npm package into the project
   ![image](https://github.com/user-attachments/assets/d2e99ccd-83d1-405a-bde8-8599a07ffff4)


   ![image](https://github.com/user-attachments/assets/ef0e1fae-477b-4518-8499-68aac73b1068)

3. Deploy the project to `sqlite`.

   
   ![image](https://github.com/user-attachments/assets/a4bac547-3f34-46f9-85c7-e69911af4c7a)

### 3.1 Access database through `sqlite` command
   a. connect `sqlite3` database
   
   ![image](https://github.com/user-attachments/assets/24225b71-7664-4034-9fc5-7617224d9af9)
   
   b. Open the `bookshop.db` file
   
   ![image](https://github.com/user-attachments/assets/05847fe8-ec7f-4e36-ab61-8ad77e5136dc)
   
   c. Get all the tables in database `bookshop.db` file.
   
   ![image](https://github.com/user-attachments/assets/f5c24189-6e1b-402f-a755-85380860d863)

   d. Perfrom SQL queries on the tables and Views.

   ![image](https://github.com/user-attachments/assets/6681e17e-3ee8-41aa-9976-b680f7e7c810)

   ### 3.2 Access database through `SQL Tools`.

   a. Add the connection on SQL Tools.
   ![image](https://github.com/user-attachments/assets/589b52fc-d486-4f18-8736-53bee9db3c01)

   b. Provide the detail for the connection.

   ![image](https://github.com/user-attachments/assets/35f19b97-1a6e-4779-87df-cb102ca168d5)

   c. Now the Tables and Views are visible in `SQL Tools`.

   ![image](https://github.com/user-attachments/assets/5bec1c39-473e-4dd7-9859-84b510df2801)

## Step 5: Compile the database file through 'cds compile`
![image](https://github.com/user-attachments/assets/e19a181f-d05a-4701-affc-3f722e98f1d3)


1. Compile the databse in `CSN` format. execute `cds compile Schema.cds`.

![image](https://github.com/user-attachments/assets/d000d0c2-11fc-4d8a-9401-0b34dd3fca74)

2. Compile the database into `SQL` format. execute `cds compile Schema.cds --to sql`.

![image](https://github.com/user-attachments/assets/8478b285-9718-46e5-8d00-af954d34eb86)

3. See the matadata of the Service. execute `cds compile catalog-service-cds --to edmx`.

![image](https://github.com/user-attachments/assets/281b1683-0d33-4129-8296-7985e8aeb4f4)

## Step 6: Add sample data to the entity through `csv` file.

Add the content into the respective file and execuete command `cds compile` then data will fetched from csv file and inserted into the table.

![image](https://github.com/user-attachments/assets/e2566432-f4ca-4918-bbdf-a0d5030299c0)


![image](https://github.com/user-attachments/assets/afc3edf0-92a2-4589-9c68-ad8d382eea39)

## Step 7: Create a REST file to manipulate data 

Create a file `queries.http` in the root folder of the project.

![image](https://github.com/user-attachments/assets/8d32c7e4-2044-4a59-92b6-9f151a6236ef)

## Step 8: Adding Common Types and Aspects in the Project.

![image](https://github.com/user-attachments/assets/dc64194d-f4ed-4c10-acca-36b4cc4d8837)

![image](https://github.com/user-attachments/assets/b0601fda-0ecb-4d79-ae15-06924b8ec384)

## Step 9: Adding annotations in Services.

![image](https://github.com/user-attachments/assets/9ffafe45-73ad-471b-ba6c-33ad78d5fa56)

Metadata of entity `Books`

![image](https://github.com/user-attachments/assets/b40bc220-3ac9-4ac2-8447-c4a2136304e3)

Metadata of entity `Authors`

![image](https://github.com/user-attachments/assets/a57b021a-c1b0-4ce8-9f37-30295882d55e)

## Step 10: Different Way to use Namespaces and other Service.

1. ![image](https://github.com/user-attachments/assets/0dd7d86c-3a98-4d71-8ff7-fcfcfb513a84)

2. ![image](https://github.com/user-attachments/assets/4454a8a5-6c88-428b-a6ec-d2f6898b7a86)

3. ![image](https://github.com/user-attachments/assets/f570ea4d-85c5-4c55-a70d-bf51289a2bc0)

4. ![image](https://github.com/user-attachments/assets/c7d91d96-b47a-4ee2-8ab1-16fd1b4068a8)

Other Service

![image](https://github.com/user-attachments/assets/8e475fde-313e-4d2b-9aac-50068b29b2af)


![image](https://github.com/user-attachments/assets/f1e4d9d4-527c-4abd-802a-fb2ce4b8b770)


## Step 11: Custom Logic and Debugging.

 1. Handler file can be defined in 2 ways (as per the below screen shot)

    ![image](https://github.com/user-attachments/assets/597cd1db-fe02-46f7-b7a0-13d51d228fed)

 2. Defining the handler file (@ different ways)

    ![image](https://github.com/user-attachments/assets/c0f308de-d855-440f-bd25-893055e20c74)

    ![image](https://github.com/user-attachments/assets/93bbb3c4-e385-4af0-b713-f175440ab6a0)

 3. Creating handler file in project. (`catalog-service.js`).

    ![image](https://github.com/user-attachments/assets/9627bf69-7ded-41fb-880e-4fad4b25cde9)


    ![image](https://github.com/user-attachments/assets/896e4b30-4895-4c22-874f-741ba1e78eb5)

 4. Defining name of handler file other than the name of the Service file (`cat-service.js`).

    ![image](https://github.com/user-attachments/assets/842d21e1-6298-4df7-97de-e72b644980ce)

    ![image](https://github.com/user-attachments/assets/ed4eafb0-72e8-49c2-b744-23230e0a867b)

## Step 12: Add HANA Database into the project.

1. Add the npm package `npm i @sap/hana-client` or `npm add @cap-js/hana` to add the hana package.

   ![image](https://github.com/user-attachments/assets/d4fc2f89-1571-49ae-bb91-18441edac5c5)

2. Execute the command `cds build --for hana` to build the cds file as below screen shot.

   ![image](https://github.com/user-attachments/assets/8d85834b-092a-497d-8765-c9820a2e41b2)

   ![image](https://github.com/user-attachments/assets/b2ad7916-1122-436f-bd66-bcfaea8f98fa)

3. Execute the command `cds add hana --for production` to add the hana database for `procustion` profile.

   ![image](https://github.com/user-attachments/assets/34d79f01-27fd-4007-8a12-97c9fcad94eb)

4. Execute the command `cds deploy --to hana:bookshop-db` to deploy the project and it will create the HDI container service `bookshop-db` in the cockpit. And `deploy` command will do the following as per the below screen shot.
   
   ![image](https://github.com/user-attachments/assets/b667600c-c4f7-4093-99b1-c8fd82e9a797)

   ![image](https://github.com/user-attachments/assets/7fad8f8c-6a7b-4885-b11e-95024c76198b)

  
   ![image](https://github.com/user-attachments/assets/35b967b7-cb24-498a-8ea5-da1ba7ddda5f)


## Step 13: Add `XSUAA` into the project.

  1. Execute the command `cds add xsuaa` and below file and dependencies will created as shown in the screen shot.
     
     ![image](https://github.com/user-attachments/assets/3e682e50-c755-424d-a1eb-30983eef1456)

     ![image](https://github.com/user-attachments/assets/505da829-45f2-4097-84c1-d79172447127)

  2. Add the below content in `xs-security.json` file.

     ![image](https://github.com/user-attachments/assets/cfb6e85d-caea-4221-9992-61d738a26e51)


## Step 14: Add `mta` file into the project.

 1. Execute the command `cds add mta` then mta file will get added.

    ![image](https://github.com/user-attachments/assets/cb5181a4-4de5-4fda-a41e-329935066204)

## Step 15: Build the project.

  1. execute the command `mbt build` then `mta-archives` forlder will get created on root directoy that contains the `.mtar` file.

     ![image](https://github.com/user-attachments/assets/c865c8dd-dedc-4483-969b-dc4a41bc7292)


## Step 16: Deploy the project to cloud foundry.

 1. Execute the command 'cf deploy mta_archives/bookshop_1.0.0.mtar ` then project will get deploy to cloud foundry.

    

  





   

   





































