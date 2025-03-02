// Licencia
// SPDX-License-Identifier: LGPL-3.0-only

// Version 
pragma solidity 0.8.28;

// Contrato
contract Calculadora {

    // Variables
    uint256 public resultado = 10;

    // Modifiers
    modifier checkNumber(uint256 num1_) {
        if(num1_ != 10) revert();
        _;
    }

    // Funciones (function) + nombre + argumentos + visibilidad + modificador + valor devuelto
    // Visibilidad
        //  - external (SOLO SERÁ LLAMADA POR UN SMART-CONTRACT QUE SE CONECTE CON EL NUESTRO O POR UNA CARTERA METAMASK DE UN USUARIO QUE INTERACTÚE CON NUETRO SMART-CONTRACT)
        //  - internal (SOLO SE LLAMARÁ DESDE DENTRO DE NUESTRO CONTRATO)
        //  - public (Desde cualquiera de los dos anteriores)
        //  - private (ES COMO INTERNAL, PERO INTERNAL DEJA A LOS CONTRATOS QUE DERIVEN DE SU CONTRATO PADRE EJECUTAR ESTAS FUNCIONES Y PRIVATE NO)

    // Events
    event Addition(uint256 number1, uint256 number2, uint resultado);
    event Substraction(uint256 number1, uint256 number2, uint resultado);

    // External functions
    // Funciones (function) + nombre + argumentos + visibilidad + modificador + valor devuelto
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 resultado_) {
        resultado_ = num1_ + num2_;

        emit Addition(num1_, num2_, resultado);
    }

    function substraction(uint256 num1_, uint256 num2_) public returns(uint256 resultado_) {
        resultado_ = substraction_logic(num1_, num2_);

        emit Substraction(num1_, num2_, resultado);
    }

    function substraction2(uint256 num1_, uint256 num2_) public pure returns(uint256 resultado_) {
        resultado_ = substraction_logic(num1_, num2_);
    }

    function multiplier(uint256 num1_) public {
        resultado = resultado * num1_;
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_){
        resultado = resultado * num1_;
    }
    
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 resultado_) {
        resultado_ = num1_ - num2_;
    }
    
}
