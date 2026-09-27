// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Require {
    uint256 private codigo = 267547;
    address public  owner;

    constructor(){
        owner = msg.sender;
    }

    function cambiarCodigo (uint256 _codigo) public {
        require(msg.sender == owner, "No puedes ejecutar pq no eres el propietario del contrato");
        codigo = _codigo;
    }
    
    function devolverCodigo() public  view  returns (uint256){
        return codigo;
    }
}
