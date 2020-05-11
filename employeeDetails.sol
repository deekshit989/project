pragma solidity ^0.5.1;

contract employeeDetails{ 

struct employee {  
    	uint empid;
    	string empname;
    	string company;
    	string cadar;
    	uint experience;
    	uint prevsalary;
    	bool terminated;
    	address accountaddress;
    	string domain;
    	string feedBack;
    	
	}
    address owner;  

 mapping (address => employee) employees ;

    address[]  employeeAccts; 
    
    constructor () public { 
        owner = msg.sender;  
    
}
 modifier ifOwner() {    

    	require (owner == msg.sender); 
        	_;
    	}





function insertDetails(address _address,uint _empid,string memory _empname,string memory _company,string memory _cadar,uint _prevsalary
                        ,bool _terminated,string memory _domain,string memory _feedBack)  public ifOwner {
            
    	employees[_address].accountaddress = _address;
    	employees[_address].empid = _empid;
    	employees[_address].empname = _empname;
    	employees[_address].company  = _company;
    	employees[_address].cadar = _cadar;
    	employees[_address].prevsalary = _prevsalary;
    	employees[_address].terminated = _terminated;
    	employees[_address].domain = _domain;
    	employees[_address].feedBack = _feedBack;
    	employeeAccts.push(_address) +1;
	}

function setExperience(address _address,uint _experience) public {
    
    employees[_address].experience = _experience;
}


	function updatedetails(address _address,uint _empid,string memory _empname,string memory _company,string memory _cadar,uint _experience,uint _prevsalary,string memory _domain,string memory _feedBack)  public ifOwner{
                	
        employees[_address].empid = _empid;        	
        employees[_address].empname = _empname;
    	employees[_address].company = _company;
    	employees[_address].cadar = _cadar;
    	employees[_address].experience = _experience;
    	employees[_address].prevsalary = _prevsalary;
    	employees[_address].domain = _domain;
    	employees[_address].feedBack = _feedBack;
	}
	function setfeedBack(address _address,string memory _feedBack) public ifOwner {
	    employees[_address].feedBack = _feedBack;
	}


     function getEmployeeDetails(address _address) view public returns(uint,string memory,string memory,string memory,uint,bool,string memory){
         
    
    	return (employees[_address].empid,employees[_address].empname,employees[_address].company,employees[_address].cadar,
    	employees[_address].prevsalary,employees[_address].terminated,employees[_address].feedBack);
         
     }
     function getDomain(address _address) view public returns(string memory){
         return (employees[_address].domain);
     }
     
     function getExperience(address _address) view public returns (uint){
    
    return (employees[_address].experience);
}

    function getemloyeess() view public returns(address[] memory) {
        
    
    	return employeeAccts;  
    }
    function countstudentss() view public returns (uint) {
    
    	return employeeAccts.length;
    }

	function validateEmployee(address valAddress) view public returns(bool){
    	if ((employees[valAddress].accountaddress==valAddress)){
        	return true;
    	}
    	else {
        	return false;
    	}
	}   
	
}



