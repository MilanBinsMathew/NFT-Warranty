require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-waffle")

const fs = require("fs")
const privateKey = fs.readFileSync(".secret").toString()

const projectID = "f70bdacfab624d5095c7bfeb3ca64f1c"
module.exports = {
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337,
      allowUnlimitedContractSize: true
    },
    localhost: {
      allowUnlimitedContractSize: true
    },
    mumbai: {
    url: "https://rpc-mumbai.maticvigil.com/",
    accounts: [privateKey],
    allowUnlimitedContractSize: true
    },
    mainnet:{
      url: "https://polygon-mainnet.infura.io/v3/${projectID",
      accounts: [privateKey]
    },
    goerli:{
      url: "https://goerli.infura.io/v3/",
      accounts: [privateKey]
    }

  },
  solidity: {
    version: "0.8.4",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}
