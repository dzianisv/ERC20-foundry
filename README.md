This is a simple ERC20 token implementation and scripts to deploy it. Could be used as a foundry template.

## Requirements
```shell
brew install cargo
curl -L https://foundry.paradigm.xyz | bash
source ~/.zshenv
forgeup --branch master
```

## How to deploy
1. Export the ERC20_NAME, ERC20_SYMBOL, ETH_PRIVATE_KEY
2. `./deploy.sh`

## What I did?
```shell
forge init --template https://github.com/foundry-rs/forge-template hello_template
forge install OpenZeppelin/openzeppelin-contracts --no-commit
forge install foundry-rs/forge-std --no-commit
```