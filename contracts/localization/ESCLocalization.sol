pragma solidity ^0.4.23;

import "../Status.sol";

contract ESCLocalization {
    mapping(byte => string) public messages;

    event StatusCode(byte indexed code, string indexed message);

    function add(byte _code, string _msg) internal {
        messages[_code] = _msg;
    }

    function emitMessage(byte _code) external {
        emit StatusCode(_code, messages[_code]);
    }
}
