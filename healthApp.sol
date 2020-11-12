pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract HealthApp {

  string name;
  uint age;
  uint height;
  uint weight;
  uint bmi;
  uint runDistance;
  uint walkDistance;
  uint yogaDuration;
  
  function trackRun(uint distance) public returns(uint) {
      runDistance = distance;
      return runDistance;
  }
  

}
