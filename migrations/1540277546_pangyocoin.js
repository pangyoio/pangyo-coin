var PangyoCoin = artifacts.require("./PangyoCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(PangyoCoin);
};
