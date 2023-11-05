// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0;

contract StudentData {
    struct Student {
        uint256 studentID;
        string name;
        uint256 age;
    }

    Student[] public students; // Array to store student data

    // Function to add a student
    function addStudent(uint256 _studentID, string memory _name, uint256 _age) public {
        Student memory newStudent = Student(_studentID, _name, _age);
        students.push(newStudent);
    }

    // Function to get the total number of students
    function getTotalStudents() public view returns (uint256) {
        return students.length;
    }

    // Fallback function
    receive() external payable {
        // Fallback function can receive Ether
    }
}
