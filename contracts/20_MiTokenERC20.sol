// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MiTokenERC20 is ERC20 {

    address public owner;
    
    constructor() ERC20("Ballenita Fan Token", "BFT") {
        _mint(msg.sender, 1000  * 10 ** decimals()); //forma correcta
    }

    modifier isOwner(){
        require(msg.sender== owner, "No eres el owner del contrato"); 
        _;
    }
    
    function totalSupplyBFC() public view returns(uint256) {
        return totalSupply() / (10 ** decimals());
    }

    function balanceOfBFC(address _address) public view returns(uint256) {
        return balanceOf(_address) / (10 ** decimals());
    }

        function mintear (address to, uint256 cantidad) public {
        _mint(to, cantidad = 10 ** decimals());
    }
    
    function mintearBFT (address to, uint256 cantidad) public {
        _mint(to, cantidad * 10 ** decimals());
    }

    function esSocio (address _cuenta) public view returns(bool){
        return  balanceOf( _cuenta) > 0;
    }
}