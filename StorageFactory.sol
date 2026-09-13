//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //this is the solidity versions

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    //address[] public listOfSimpleStorageAddresses;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStorage(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
        // Adress
        // ABI Application Binary Interface
        //SimpleStorage mySimpleSorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageContracts[_simpleStorageIndex]);
        mySimpleStorage.store(_newSimpleStorageNumber);
        // SimpleStorage(address)
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
