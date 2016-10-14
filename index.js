const fs    = require('fs');
const show  = JSON.stringify;
const log   = console.log;
const debug = false;
// const debug = true;

const Elm = require("./elm.js");

const elm = Elm.Main.worker({
    args: process.argv,
    configFilename: "./config.json",
    createdAt: Date.now()
});

elm.ports.debugModel.subscribe(function(model) {
    if (debug) {
        log("DEBUG model: " + show(model));
    }
});

elm.ports.start.send(null);

