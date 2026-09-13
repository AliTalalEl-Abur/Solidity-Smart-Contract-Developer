//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //this is the solidity versions

contract SimpleStorage {

    uint256 public myfavoriteNumber; //0

    //uint256[] listOfFavouriteNumbers; // [0, 78, 90]
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;//[]


    //chelsea->232
    mapping (string => uint256) public nameToFavoriteNumber; 

    //static array
    //Person[3] public listOfPeople;//[]

    //Person public pat = Person({favoriteNumber:7, name:"Pat"});
    //Person public mariah = Person({favoriteNumber:16, name:"mariah"});
    //Person public jon = Person({favoriteNumber:12, name:"Jon"});

    function store(uint256 _favoriteNumber) public virtual{
        myfavoriteNumber = _favoriteNumber; // +5
    }

    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber)public{
        listOfPeople.push(Person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}