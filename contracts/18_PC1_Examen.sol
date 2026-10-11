// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Gym267547 {

    struct Miembro {
        uint256 id;
        string nombre;
        uint256 edad;
        string membresia;
    }

    Miembro[] public miembros;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}
