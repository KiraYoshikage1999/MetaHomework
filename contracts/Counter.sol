// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28 <0.9.0;

contract Counter {
    uint value; 

    struct User{
        string name;
        uint age;

    }

    User public currentUser;
    User[] public currentUsers;

    function get_user(string calldata _name, uint _age) external pure returns (User memory) {
        return User(_name, _age);
    }

    function get_all_users() external view returns (User[] memory) {
    return currentUsers;
    }
    
    function set_user(string calldata  _name, uint _age) external{
        currentUsers.push(User(_name,_age));
    }

    //     function get_users(string[] calldata _names, uint[] calldata _ages) external pure returns (User[] memory) {
    //         require(_names.length == _ages.length, "Arrays length mismatch");

    //         User[] memory users = new User[](_names.length);
        
    //         for (uint i = 0; i < _names.length; i++) {
    //             users[i] = User(_names[i], _ages[i]);
    //         }
    
    //         return users;
    // }

    //     function set_array_user(string[] calldata _names, uint[] calldata _ages) external {
    //         require(_names.length == _ages.length, "Arrays length mismatch");
        
    //         delete currentUsers;

    //         for (uint i = 0; i < _names.length; i++) {
    //             currentUsers.push(User(_names[i], _ages[i]));
    //     }
    // }

    // function get_user() external view returns(string calldata, uint) {

    // }

    function set_value(uint _value) external{
        value = _value;
    }

    function get_value() external view returns(uint) {
        return value;
    }
}