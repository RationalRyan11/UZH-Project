pragma solidity ^0.5.0;

contract covidregister {

//Create the data structure and array for adding covid certificates
  struct covidcertificate {
    string name;
    string surname;
    string vaccinetype;
    string date;
    string doctor;
    address added_by;
  }


  covidcertificate[] public covidcertificates;


//Create the data structure and array for booking the ticket
  struct ticketbooking {
    string name;
    string surname;
    string venue;
    string date;
    address added_by;
  }


  ticketbooking[] public ticketbookings;

//Create the data structure and array for booking the ticket
  struct ticket {
    string name;
    string surname;
    string vaccine;
    string date;
    address added_by;
  }


  ticket[] public tickets;



//Add a covid certificate
  function addcovidcertificate(string calldata _name, string calldata _surname, string calldata _vaccinetype, string calldata _date, string calldata _doctor) external returns(uint){
    uint id = covidcertificates.push(covidcertificate(_name, _surname, _vaccinetype, _date, _doctor, msg.sender)) - 1;
    
    return id;
  }

//Add a ticket booking 
  function addticketbooking(string calldata _name, string calldata _surname, string calldata _venue, string calldata _date) external returns(uint){

      uint id = ticketbookings.push(ticketbooking(_name, _surname, _venue, _date, msg.sender)) - 1;
      return id;

  }



//Returns the number of certificates
  function countcertificates() external view returns(uint) {

    return covidcertificates.length;
  }

//Returns the number of tickets
  function countbookings() external view returns(uint) {

    return ticketbookings.length;
  }

}