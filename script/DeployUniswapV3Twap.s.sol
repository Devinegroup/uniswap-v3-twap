// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "src/contracts/UniswapV3Twap.sol"; // Adjust the path as necessary to where your contract is located

contract DeployUniswapV3Twap is Script {

    
    address private constant UNISWAP_V3_FACTORY_ADDRESS = 0x0227628f3F023bb0B980b67D528571c95c6DaC1c;
    address private constant TOKEN0 = 0x6F96d6E2d7EB1F44Ff56eBE2AaB59B20202fbC86;
    address private constant TOKEN1 = 0xaA8E23Fb1079EA71e0a56F48a2aA51851D8433D0;
    uint24 private constant FEE = 3000;

    function run() public {
        vm.startBroadcast();

        UniswapV3Twap uniswapV3Twap = new UniswapV3Twap(UNISWAP_V3_FACTORY_ADDRESS, TOKEN0, TOKEN1, FEE);
        console.log("UniswapV3Twap deployed to:", address(uniswapV3Twap));

        vm.stopBroadcast();
    }
}