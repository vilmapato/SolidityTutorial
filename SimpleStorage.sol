// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{
    // to define variables with a type it has to be define at the beginnig
    bool isMyFavoriteNumber = true;
    // address myAddress = 00x0x00xsomewalletaddress;
    uint256 favoriteNumber;

    // ipmortant to define wheather a variable is public or private (visibility 4 types) 
    // default is interanl meaning can't been seen or called

    //function that modifies the state of the chain it shows as organge when deployed and when func is view then 
    function Store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // the following is an only view fuction -- it is reading from the state while a Pure func is returning a value
    function retrieveNumber() public view returns(uint256){
        return favoriteNumber;
    }

    // Creating a new type is similar to classes 
    //1. you build your own type and then create it
    struct Person{
        uint256 myFavoriteNumber;
        string name;
    }

    Person public pato = Person(1,"Pato");

    //arrays work the same only difference is the dynamic way
    Person[] public listOfPeople;

    //create a funct to populate the listofpeople and creating new person
    function addPerson(string memory _name, uint256 _myFavoriteNumber) public {
        listOfPeople.push(Person(_myFavoriteNumber, _name));
    }
}