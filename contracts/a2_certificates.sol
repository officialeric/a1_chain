//SPDX-licence-identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract A2Certificates {
    uint public certificationCounter = 0;
    mapping(bytes32 => Certificate) public certificates;

    struct Certificate {
        uint _index;
        string _student_name;
    }

    function addCertificate(string memory _student_name) public {
        // Generate a unique ID using keccak256
        bytes32 certificateId = keccak256(abi.encodePacked(_student_name));
        
        require(certificates[certificateId]._index == 0, "Certificate already exists");
        
        certificates[certificationCounter] = Certificate(
            certificateId,
            _student_name
        );
        certificationCounter += 1;
    }
}
