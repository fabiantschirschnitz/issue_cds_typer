import cds from "@sap/cds";
const LOG = cds.log("server");

import cds_swagger from "cds-swagger-ui-express";
import { cds_launchpad_plugin } from "cds-launchpad-plugin";

// install OData v2 adapter
//const proxy = require('@sap/cds-odata-v2-adapter-proxy')

export default cds.server;

if (process.env.NODE_ENV !== "production") {
  cds.once("bootstrap", (app) => app.use(cds_swagger()));
}

if (process.env.NODE_ENV !== "production") {
  cds.once("bootstrap", (app) => {
    // Enable launchpad plugin
    // https://blogs.sap.com/2022/03/14/a-fiori-launchpad-sandbox-for-all-your-cap-based-projects-overview/
    // https://github.com/geert-janklaps/cds-launchpad-plugin
    const handler = new cds_launchpad_plugin();
    app.use(handler.setup({ theme: "sap_horizon" }));
  });
}
