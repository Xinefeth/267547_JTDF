// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
 
 contract VariableSimples {

    uint256 public edad; //por defecto toma el valor de cero
    
    function cambiarEdad (uint256 nuevaEdad) public {
        edad = nuevaEdad;
    }

    function devolverEdad() view public returns (uint256){ //Se coloca view porque es una funcion de lectura
        return  edad;
    }

    
 }