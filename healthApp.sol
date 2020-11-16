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
  
  
  
  function trackRun(uint distance) public returns(uint) {
      runDistance = distance;
      return runDistance;
  }
  
  function trackWalk(uint distance) public returns(uint) {
      walkDistance = distance;
      return walkDistance;
  }
  
  function trackYoga(uint time) public returns(uint) {
      yogaDuration = time;
      return yogaDuration;
  }
  

}
