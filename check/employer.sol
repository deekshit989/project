pragma solidity ^0.4.19;
import "browser/students.sol";//include the same file name

contract Employer{  //contract name

   studentDetails s1 = studentDetails(0xbf204f310e5aebc37d5a7d0cfc325ef4126fb2e3);
                                           	 
                                            	//s1 is an instance
                                            	//copy the address of the imported file(students.sol)
                                           	 
	function Employer () {	//empty constructor
	}

	function checkBgc(address vaddress) constant returns (string){
        	if(s1.validateStudent(vaddress)){//"validateStudent" is a function in students.sol
            	return "Valid";
        	}
    
    	return "Invalid";
	}
}