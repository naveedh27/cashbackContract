var MyContract = artifacts.require("./Cashback.sol");

module.exports = function (deployer) {
  deployer.deploy(MyContract,{gas:15000000});
};