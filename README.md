# Raffle Smart Contract

## Introduction

This project is a raffle smart contract deployed on the Sepolia testnet. It uses Chainlink's VRF for random number generation to select the winner.

## Prerequisites

- An Alchemy account for a Sepolia RPC URL.
- An Etherscan API Key for transaction verification.
- Foundry installed. Refer to [Foundry's documentation](https://book.getfoundry.sh/) for installation.

## Environment Setup

1. **Import Your Private Key into Keystore**

   You should import your private key into a keystore using the following command:

   ```bash
   cast wallet import sepolia_key --interactive
   ```

   You will be prompted to enter your private key and set a password.

2. **Create a `.env` File**

   In the project directory, create a `.env` file and add the following environment variables:

   ```env
   SEPOLIA_RPC_URL=<Your Alchemy RPC URL>
   ETHERSCAN_API_KEY=<Your Etherscan API Key>
   ```

   *Note: You do not need to store your private key in this file, as it is securely stored in your keystore.*

## Deployment

To deploy the contract on the Sepolia testnet, run the following command:

```bash
make deploy-sepolia
```

### Makefile Command

```makefile
-include .env

deploy-sepolia:
	@forge script script/DeployRaffle.s.sol:DeployRaffle --rpc-url $(SEPOLIA_RPC_URL) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
```

## Contract Details

The contract is deployed on the Sepolia testnet. You can view it here:

- [Deployed Contract on Sepolia](https://sepolia.etherscan.io/address/0x6bc1ec9dc2c31db5d5eff11426a1eb17f3246655#code)

## Interacting with the Contract

1. Connect your wallet to the Sepolia testnet (e.g., MetaMask).
2. Interact with the contract functions as per the contract's code available on Etherscan.
3. Note that Chainlink VRF is used for winner selection.

## Conclusion

You can now deploy and interact with the raffle smart contract on Sepolia using Foundry. Refer to documentation for further details and troubleshooting.



