// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract fizzBuzz
{

    function fizzBuzzFunc(int num) public pure returns (string memory)
    {
        if (num % 5 == 0 && num % 3 == 0){
            return "FizzBuzz";
        }
        else if (num % 3 == 0){
            return "Fizz";
        }
        else if (num % 5 == 0){
            return "Buzz";
        }
        else{
            return "Not a Fizz Buzz!";
        }
    }

}
