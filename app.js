var serialPort = require("serialport");

function getSerialPorts() {
  serialPort.list(function (err, ports) {
    if (err) {
      console.log("ERR: " + err);
      ports = [];
    }
    ports.forEach(function(port) {
      console.log("Port: " + port.comName);
      console.log("Driver: " + port.pnpId);
      console.log("Manufacturer: " + port.manufacturer);
    });
    setTimeout(getSerialPorts, 5000);
  });
}


getSerialPorts();

