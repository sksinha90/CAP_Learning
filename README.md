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

## Prepare development envionment for CAPM 
Link: https://developers.sap.com/tutorials/btp-app-prepare-dev-environment-cap.html


## Steps to create CAPM Project

### 1. Setup npm registry
   The SAP npm registry contains all node modules developed by SAP. Setting it up is quite simple.
```
npm set @sap:registry=https://npm.sap.com
```
### 2. Install cds

```
npm i -g @sap/cds-dk
```
> Note: You can check your cds version, by running the following command:`cds --version`
> 
### 3. Create a new project
To create a new CAP project, you can use the `cds init` command. This command creates the needed project configuration for you to start developing your application. Since this exercise is about creating a simple bookshop application, the project name will be **bookshop**.

```
cds init bookshop
```
### 4. Open the created project in VSCode

### 5. Create the domain model.

Domain models capture and conceptually define the specific entities of a domain. They usually do so in normalized ways and serve different use cases. Now we're going to create the domain model for our bookshop app.

1. Create a file called `schema.cds` under `db` folder.
2. Copy the following content into the new file:
```
    namespace my.bookshop;
    using { Country, managed } from '@sap/cds/common';
    entity Books {
      key ID : Integer;
      title  : localized String;
      author : Association to Authors;
      stock  : Integer;
    }
    entity Authors {
      key ID : Integer;
      name   : String;
      books  : Association to many Books on books.author = $self;
    }
    entity Orders : managed {
      key ID  : UUID;
      book    : Association to Books;
      country : Country;
      amount  : Integer;
    }
 ```
3. Save the file.
   CDS ships with a pre-built model @sap/cds/common that provides common types and aspects. We use two of them:
    - the aspect `managed` 
    - the type `Country`

### 6. Create a service
  Create a new file called `cat-service.cds` in `srv` folder amd write the below content.
 ```
    using my.bookshop as db from '../db/schema';
    service CatalogService {
      @readonly entity Books as projection on db.Books;
      @readonly entity Authors as projection on db.Authors;
      @insertonly entity Orders as projection on db.Orders;
    }
```

### 7. Add dummy data data to database.

 Add a file called **db/data/my.bookshop-Books.csv** and copy the below content:
 ```csv
    ID;title;author_ID;stock
    201;Wuthering Heights;101;12
    207;Jane Eyre;107;11
    251;The Raven;150;333
    252;Eleonora;150;555
    271;Catweazle;170;22
 ```
 Add another file called **db/data/my.bookshop-Authors.csv** and copy the below content:
 
```csv
    ID;name
    101;Emily Brontë
    107;Charlote Brontë
    150;Edgar Allen Poe
    170;Richard Carpenter
 ```
 
### 8. Connect to the database and deploy
1. Add the SQLite driver for Node.js as a dev dependency to our project. execute the below command

```
    npm install sqlite3 -D
```
2. To deploy our data model to an SQLite database, run:

```
    cds deploy --to sqlite
```
### 9. Run the bookshop application locally

  To run the appliation, execute the below command:
  ```
  cds watch 
  ```
  or 
  ```
  cds run
  ```
