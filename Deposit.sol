pragma solidity ^0.8.0;

contract DepositContract {
    mapping (address => uint) private deposits;
    uint public totalDeposits;

    function deposit() public payable {
      deposits[msg.sender] += msg.value;
      totalDeposits += msg.value;
    }

    function withdraw(uint withdrawAmount) public {
      require (deposits[msg.sender]>= withdrawAmount, "Insufficent Funds");
      deposits[msg.sender] -= withdrawAmount;
      totalDeposits -= withdrawAmount;
      msg.sender.call{value: withdrawAmount};
    }

    function getTotalDeposits() public view returns (uint) {
      return address(this).balance;
    }
}
