//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //this is the solidity versions

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage public simpleStorage;

    function createSimpleStorage() public {
        simpleStorage = new SimpleStorage();
    }
}
