const cds = require("@sap/cds");
const odataV2 = require("@cap-js-community/odata-v2-adapter");
cds.on("bootstrap", (app)=> app.use(odataV2()));
module.exports = cds.server;