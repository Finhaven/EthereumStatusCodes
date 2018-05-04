pragma solidity ^0.4.23;

import "../Status.sol";

contract SttausCodeLocalization {
    mapping(byte => string) public messages;

    event StatusCode(byte indexed code, string indexed message);

    function add(byte _code, string _msg) internal {
        messages[_code] = _msg;
    }

    function log(byte _code) external {
        emit StatusCode(_code, messages[_code]);
    }
}