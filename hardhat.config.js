require("@nomiclabs/hardhat-ethers");
const mnemonic = "test test test test test test test test test test test test";
const accounts = { mnemonic };

module.exports = {
  solidity: "0.8.19",
  networks: {
    zeniq: {
      url:"https://smart.zeniq.network:9545",
      accounts
    },
    localhost: {
      url:"http://127.0.0.1:9545",
      accounts
    }
  }
};
