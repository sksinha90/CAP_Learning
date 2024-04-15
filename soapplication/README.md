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

## Steps to add hana database in CAPM project

Step 1: Create a new project
        `cds init <project_name>`

Step 2: Add the Data model file in `db` folder and service file in `srv` folder

Step 3: Install hana-cds package
            `npm i @sap/hana-cds`

               "dependencies": {
                    "@sap/cds": "^7",
                    "@sap/cds-hana": "^2",  `this like will get added`
                    "express": "^4",
                    "hdb": "^0.19.5"
                },

Step 4: Add hana to the project
            `cds add hana`

            ** Below line will get added **
            "cds": {
                "requires": {
                    "db": {
                        "kind": "hana"
                    }
                }
            }

Step 5: Add the hdb `(optional)`
        `npm add hdb --save`

Step 6: Deploy the project to hana
        `cds deploy --to hana`
        It will create the hana db services in this case called `soapplication-db` and create the `db key`.
        This step will also create the `VCAP_SERVICES` in the terminal itself.

        Note: if you run the `cds watch` here the service willl not get connected to the database. So do the next step. and service will get connected to the database.

Step 7: Create the `default-env.json` file in root directory of the project
        Copy the `VCAP_SERVICES` created above and copy and add the `db-key` created for db service in  `credential` section. 
