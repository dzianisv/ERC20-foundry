// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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
        string name = vm.envString("ERC20_NAME");
        string symbol = vm.envString("ERC20_SYMBOL");
        MintableToken token = new MintableToken(name, symbol);
        vm.stopBroadcast();
        vm.writeFile(".data/token.txt", address(token).toHexString());
    }
}
