pragma solidity ^0.5.1;
import "browser/employeeDetails.sol";
contract Employer{
 employeeDetails s1 = employeeDetails(0x1b3606D7eB46b20752D69fe8eB5d6fFE45f6ef6E);
 uint val1;

constructor () public {
	}

function checkExp(address _address) view public returns (uint){

  return (s1.getExperience(_address));
}

function setExp(address _address,uint _experience) payable public returns (string memory) {
 if(s1.validateEmployee(_address)){ 
s1.setExperience(_address,_experience);
 
}
 return "invalid";
}

function getEmployeeDetails(address _address) view public returns(uint,string memory,string memory,string memory,uint,bool,string memory){
         
    
    	return (s1.getEmployeeDetails(_address));
         
     }
     
 function setEligibilty(uint _value) payable public {
 val1 = _value;
 } 
 
 function checkELigble(address _address) view public returns (string memory){
 if(s1.getExperience(_address)>=val1){
 return "Eligible";
 }
return "Not Eligible";
 
 } 
}