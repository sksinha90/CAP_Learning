# Getting Started

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

2. Deploy the project to `sqlite`.
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































