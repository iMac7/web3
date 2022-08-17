// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //any version >= this. to set ranges, syntax e.g. pragma solidity >=0.8.8 <0.9.0

contract SimpleStorage{
//data types - bool, int, uint, string, address, array, struct(js object)
    uint256 public someinteger;

//struct
    struct People{
        string name;
        uint256 age;
    }

    People public person = People({name: "mash", age: 40});

//mapping
    mapping(string => uint256) public Nametoage;

//array
    People[] public people;

    function addPerson(string memory _name, uint256 _age) public {
        people.push(People(_name, _age));
        Nametoage[_name] = _age;
    }

//function
    function something(uint256 _someinteger) public {
        someinteger = _someinteger;
    }

    function viewnumber() public view returns(uint256){
        return someinteger;
    }
}
