-include .env

deploy-sepolia:
	@forge script script/DeployRaffle.s.sol:DeployRaffle --rpc-url $(SEPOLIA_RPC_URL) --account sepolia_key --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv