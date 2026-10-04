// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Complejos_String {
    string private saludo = "Hola";
    bytes public datos;

    function cambiarSaludo(string memory _saludo) public {
        saludo = _saludo;
    }

    function devolverSaludo() public view returns (string memory) {
        return saludo;
    }

    function concatenar (string memory _texto) public {
        //saludo = string (abi.encodePacked( saludo, "", _texto));
        saludo = string.concat(saludo,"", _texto);
    }
    
}