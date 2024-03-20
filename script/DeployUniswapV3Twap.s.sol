// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "forge-std/Script.sol";
import "../src/UniswapV3Twap.sol"; // Adjust the path as necessary to where your contract is located

contract DeployUniswapV3Twap is Script {

    function run() public {
        vm.startBroadcast();

        address factory = /* Factory Address Here */;
        address token0 = /* Token0 Address Here */;
        address token1 = /* Token1 Address Here */;
        uint24 fee = /* Fee Tier Here */;

        UniswapV3Twap uniswapV3Twap = new UniswapV3Twap(factory, token0, token1, fee);
        console.log("UniswapV3Twap deployed to:", address(uniswapV3Twap));

        vm.stopBroadcast();
    }
}
