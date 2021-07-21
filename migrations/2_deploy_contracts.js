var covidregisterartifact = artifacts.require("covidregister");

module.exports = function (deployer) {
  deployer.deploy(covidregisterartifact);
};