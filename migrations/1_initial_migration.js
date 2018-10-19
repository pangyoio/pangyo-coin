var StandardToken = artifacts.require("./PangyoCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(StandardToken);
};
