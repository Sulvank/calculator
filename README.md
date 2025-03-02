# **🧮 Calculadora Smart Contract**

## **📝 Overview**
El **Calculadora** es un contrato inteligente basado en Solidity que implementa operaciones matemáticas básicas como suma, resta y multiplicación. Además, incorpora eventos para notificar cálculos y modificadores para restringir ciertas ejecuciones.

> [!NOTE]  
> Este contrato está diseñado para ser una prueba de concepto de operaciones matemáticas en Solidity.

### **🔹 Características Principales:**
- ✅ **Operaciones aritméticas básicas**: Suma, resta y multiplicación.
- ✅ **Eventos** para registrar cálculos.
- ✅ **Modifiers** para restringir ciertos valores de entrada.
- ✅ **Visibilidades adecuadas** para encapsular la lógica de negocio.

---

## **✨ Funcionalidades**

### **➕ Operación de Suma**
- Recibe dos valores y devuelve la suma.
- Emite un evento `Addition` con los valores y el resultado.

### **➖ Operación de Resta**
- Recibe dos valores y devuelve la resta.
- Implementa una función interna para encapsular la lógica de la resta.
- Emite un evento `Substraction`.

### **✖️ Operación de Multiplicación**
- Multiplica el resultado acumulado por un número dado.
- Puede estar sujeta a restricciones mediante un modificador.

### **⚠️ Modificadores**
- `checkNumber(uint256 num1_)`: Restringe la ejecución si el número de entrada no es 10.

> [!IMPORTANT]  
> Este contrato no implementa verificación de desbordamientos, por lo que su uso debe ser considerado con precaución.

---

## **📖 Resumen del Contrato**

### **Funciones Clave**

| 🔧 Nombre de la Función                | 📋 Descripción                                                 |
|----------------------------------------|--------------------------------------------------------------|
| `addition(uint256, uint256)`          | Realiza la suma de dos valores y emite un evento.             |
| `substraction(uint256, uint256)`      | Realiza la resta de dos valores y emite un evento.            |
| `substraction2(uint256, uint256)`     | Variante pura de la función de resta.                         |
| `multiplier(uint256)`                 | Multiplica el resultado acumulado por un número dado.         |
| `multiplier2(uint256)`                | Variante con restricción (`checkNumber`).                     |
| `substraction_logic(uint256, uint256)` | Función interna que encapsula la lógica de la resta.          |

---

## **⚙️ Prerrequisitos**

### **🛠️ Herramientas Requeridas:**
- **Remix IDE**: Para desplegar y probar el contrato ([Remix IDE](https://remix.ethereum.org)).
- **Metamask Wallet**: Para interactuar con la blockchain.

### **🌐 Entorno:**
- Versión del compilador Solidity: `0.8.28`.
- Red: Local (JavaScript VM) o testnets como Goerli.

> [!TIP]  
> Se recomienda probar el contrato en una red de pruebas antes de su implementación en mainnet.

---

## **🚀 Cómo Usar el Contrato**

### **1️⃣ Desplegando el Contrato**

1. Abrir [Remix IDE](https://remix.ethereum.org).
2. Crear un nuevo archivo `Calculadora.sol` y pegar el código del contrato.
3. Navegar a la pestaña **Solidity Compiler**:
   - Seleccionar la versión del compilador `0.8.28`.
   - Hacer clic en **✅ Compile Calculadora.sol**.
4. Ir a la pestaña **🛠️ Deploy & Run Transactions**:
   - Seleccionar **Environment** como `Injected Web3` si se usa MetaMask.
   - Desplegar el contrato haciendo clic en **🚀 Deploy**.

### **2️⃣ Usando el Contrato en Remix**

#### **➕ A. Sumar dos números**
1. Llamar a `addition(uint256 num1, uint256 num2)`.
2. Se emitirá un evento `Addition`.

#### **➖ B. Restar dos números**
1. Llamar a `substraction(uint256 num1, uint256 num2)`.
2. Se emitirá un evento `Substraction`.

#### **✖️ C. Multiplicar el resultado acumulado**
1. Llamar a `multiplier(uint256 num1)`.
2. Se actualizará el valor de `resultado`.

#### **🔒 D. Multiplicar con restricción**
1. Llamar a `multiplier2(uint256 num1)` con `num1 = 10`.
2. Si `num1` no es 10, la transacción será revertida.

> [!WARNING]  
> No hay verificación de desbordamientos en las operaciones matemáticas.

---

## **🛠️ Posibles Mejoras**

### **🔍 Mejoras Futuras**
- **🛡️ Manejo de desbordamientos** mediante `SafeMath`.
- **📊 Optimización de gas** reduciendo eventos innecesarios.
- **✅ Control de acceso** con roles para operaciones avanzadas.

> [!CAUTION]  
> Se recomienda auditar el código antes de usarlo en producción.

---

## **📜 Licencia**

Este proyecto está licenciado bajo LGPL-3.0-only.

---

### 🚀 **Calculadora Smart Contract: Una herramienta simple para pruebas de Solidity.**

