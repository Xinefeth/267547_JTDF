
 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
import "hardhat/console.sol";

contract Gym267547 {

    struct Miembro {
        uint256 id;
        string nombre;
        uint256 edad;
        string membresia;
        bool estado;
    }

    Miembro[] public miembros;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad, string memory _membresia, bool _estado) public {
        miembros.push(Miembro(_id, _nombre, _edad, _membresia, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return miembros.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

    function mostrarActivos() public view {
        for (uint256 i = 0; i < miembros.length; i++) {
            if (miembros[i].estado == true) {
                console.log("Ejecutado por 267547 - Diego Francesco Jara Tirado"); // Mostramos el codigo y nombre completo del estudiante.
                console.log("Miembro activo:", miembros[i].id, miembros[i].nombre);
                
            }
        }
    }
}
