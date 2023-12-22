# blockchain-splitwise

A simple way to keep track of who owes who money over a blockchain.
Automatically removes cycles of dept similar to Splitwise.

# Setup
1. Run npm install --save-dev hardhat
2. Run npm install --save-dev @nomiclabs/hardhat-ethers ethers
3. Run npm install ethers@5.4.0 (downgrade ethers to a stable version)

# Deploy
1) Run npx hardhat node (should see "Started HTTP and WebSocket JSON-RPC server at https://localhost:8545" followed by 20 priavte keys)
2) **In a seperate terminal** Run npx hardhat run --network localhost scripts/deploy.js
3) Update the contact adresss in **web_app/script.js** found from previous step
4) Update ABI in **web_app/script.js** which can be found in **artifacts/contracts/mycontract.sol/Splitwise.json** (make sure this is the whole ABI field)
5) Open **web_app/index.html** in your browser

# Test
1) Choose debtor address in the top right
2) Choose creditor address in the bottom right
3) Exchange debt between the parties

CS 251 Project 3: Splitwise
