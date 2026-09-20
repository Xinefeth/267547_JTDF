// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
 
 contract Intro {

    uint256 public edad; //por defecto toma el valor de cero
    
    constructor (uint256 _edad){
        edad = _edad;
    }
    
    function cambiarEdad (uint256 _edad) public {
        edad = _edad;
    }

    function devolverEdad() view public returns (uint256){ //Se coloca view porque es una funcion de lectura
        return  edad;
    }

    function sumar (uint256 valor1, uint256 valor2) public pure returns (uint256){      //no cambia las varaibles de estado
        return valor1 + valor2;
    }

 }