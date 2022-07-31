# Flipkart Grid 4.0 Challenge - Warranty System for Ecommerce using NFTs

This project demonstrates an E-commerce warranty system that uses Non-Fungible Tokens. The tokens act as burnable warranties promoting a more secure and efficient warranty sytsem while simultaneously contributing to a greener and healthier environment.

To run this project run the following commands:

```shell
npx hardhat run --network mumbai scripts/deploy.js

npm run dev
```

After running command 1 copy the generated address and paste them in the config.js file in root directory.

Note: This deploys the contract in the Polygon Mumbai Testnet, but it can be deployed in the following networks as well. 
    1. Polygon Mainnet - mainnet
    2. Localhost - localhost
    3. Goerli Test Network - goerli

    To run the project on any other network replace mumbai by the key as given below and copy the RPC URL and pass it as an argument to the JSON RPC provider function in the LoadNFTs function defined in index.js.
