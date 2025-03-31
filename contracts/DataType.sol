// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DataType {
    constructor(address _recipient) {
        recipient = _recipient;
    }

    // 정수형
    int public positiveNumber = 100;
    int public negativeNumber = -50;

    // Boolean
    bool public isActive = true;

    function toggleActive() public {
        isActive = !isActive;
    }

    function setPositiveNumber(int _num) public {
        positiveNumber = _num;
    }

    function setNegativeNumber(int _num) public {
        negativeNumber = _num;
    }

    // Address
    address public wallet = address(0);
    address public recipient;

    function setWallet(address _wallet) public {
        wallet = _wallet;
        recipient = _wallet;
    }

    function setRecipient(address _recipient) public {
        recipient = _recipient;
    }

    receive() external payable {}

    // Bytes
    bytes32 public fixedData = "0xabcdef123456";

    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    bytes public dynamicData;

    function setDynamicData(bytes memory _data) public {
        dynamicData = _data;
    }

    function getDynamicDataLength() public view returns (uint) {
        return dynamicData.length;
    }

    function getDynamicDataAsString() public view returns (string memory) {
        return string(dynamicData);
    }

    // Enum
    enum State { Created, Active, Inactive }
    State public currentState = State.Active;

    function setStateToInactive() public {
        currentState = State.Inactive;
    }

    function setStateToActive() public {
        currentState = State.Active;
    }

    function setState(uint _state) public {
        require(_state <= uint(State.Inactive), "Invalid state"); // if State.Inactive = 2
        currentState = State(_state);
    }

    function getDetails() public view returns (
        int, int, bool, address, address, bytes32, bytes memory, State
    ) {
        return (
            positiveNumber,
            negativeNumber,
            isActive,
            wallet,
            recipient,
            fixedData,
            dynamicData,
            currentState
        );
    }
}