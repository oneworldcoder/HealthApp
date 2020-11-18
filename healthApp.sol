pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract HealthApp {

  struct Person{
      string name;
      uint age;
      uint height;
      uint weight;
      uint bmi;
      uint runDistance;
      uint walkDistance;
      uint yogaDuration;
      
  }
  
  Person[] public people;
  
  mapping (address => Person) public owners;
  
  
  function track(string memory name, uint age, uint height, uint weight, uint bmi, uint runDistance, uint walkDistance, uint yogaDuration) public {
      address creator = msg.sender;
      
      Person memory newPerson;
      newPerson.name = name;
      newPerson.age = age;
      newPerson.height = height;
      newPerson.weight = weight;
      newPerson.bmi = bmi;
      newPerson.runDistance = runDistance;
      newPerson.walkDistance = walkDistance;
      newPerson.yogaDuration = yogaDuration;
      owners[creator] = newPerson;
      people.push(newPerson);
  } 
  
  
}
