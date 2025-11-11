// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDB {
    struct Student{
        string name;
        uint256 rollno;
        string branch;
    }

    Student[] private  students;

    function addStudent(string memory _name, uint256 _rollno, string memory _branch) public {
        students.push(Student(_name, _rollno, _branch));
    }

    function getStudentById(uint256 _id) public view returns (string memory, uint256, string memory) {
        require(_id < students.length,"Student does not exist");
        return (students[_id].name, students[_id].rollno, students[_id].branch);
    }

    function getNumberofStudent() public view returns (uint256){
        return students.length;
    }

    fallback() external payable { }

    receive() external payable { }
}
