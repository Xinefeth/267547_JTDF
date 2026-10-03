// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;
    bytes32 private saludo = hex"686F6C61";
    address public direccion;

    bytes32 private trabajo = hex"5d1db1aabb99a2dfba20e564c2473c1e0ea26984f53cc0cecccee946a22a497d"; //trabajo de blockchain


    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function operar() public view {
        require(pausado == false, "El contrato esta pausado");
        console.log("Aqui va toda la logica del funcion operar");
    }

    function devolverSaludo() public view returns (bytes32) {
        return saludo;
    }

    function validarTrabajo(string memory dni) public view {
        bytes32 cadenaTemp = keccak256(abi.encodePacked(dni));
        require (cadenaTemp == trabajo, "no es el mismo dni"); 
        console.log("Ejecucion de bloque por dni correcto");
    }

    function cambiarDireccion (address _direccion) public {
        direccion = _direccion;
    }


}