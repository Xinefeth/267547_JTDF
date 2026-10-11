
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

    // a) Agregamos un miembro al gimnasio.
    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad, string memory _membresia) public {
        miembros.push(Miembro(_id, _nombre, _edad, _membresia));
    }

    // b) Contamos la cantidad de miembros registrados.
    function contarElementos() public view returns (uint256) {
        return miembros.length;
    }

    // d) Cambiamos la direccion almacenada en el contrato.
    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
}
