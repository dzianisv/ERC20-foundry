// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Script, console2} from "forge-std/Script.sol";
import "./AddressLibrary.sol";
import {MintableToken} from "../src/Token.sol";

contract TokenDeploy is Script {
    using AddressLibrary for address;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("ETH_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        string memory name = vm.envString("ERC20_NAME");
        string memory symbol = vm.envString("ERC20_SYMBOL");
        MintableToken token = new MintableToken(name, symbol, msg.sender);
        vm.stopBroadcast();
        vm.writeFile(".data/token.txt", address(token).toHexString());
    }
}
