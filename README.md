# ERC20 Token Creation and Deployment

This project demonstrates how to create an ERC20 token and deploy the contract using Hardhat. We leverage OpenZeppelin to simplify the creation of the token, rather than implementing the ERC20 standard manually. The deployment is handled using Hardhat Ignition.

## Prerequisites

- Node.js
- npm or yarn
- Hardhat
- OpenZeppelin Contracts

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-repo/hardhat-erc20-fcc.git
    cd hardhat-erc20-fcc
    ```

2. Install dependencies:

    ```bash
    npm install
    # or
    yarn install
    ```

## Creating the ERC20 Token

We use OpenZeppelin Contracts to create the ERC20 token. OpenZeppelin provides secure and tested implementations of standard smart contracts.

1. Install OpenZeppelin Contracts:

    ```bash
    npm install @openzeppelin/contracts
    # or
    yarn add @openzeppelin/contracts
    ```

2. Create the ERC20 token contract:

    ```solidity
    // contracts/MyToken.sol
    pragma solidity ^0.8.0;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract MyFirstToken is ERC20 {
        constructor(uint256 initialSupply) ERC20("MyToken", "MFT") {
            _mint(msg.sender, initialSupply);
        }
    }
    ```

## Deploying the Contract

We use Hardhat Ignition to deploy the contract.

1. Create the deployment script:

    ```javascript
    // ignition/modules/deploy.js
    import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

    const MyTokenModule = buildModule("MyToken", (m) => {
                   // name of your contract and inside the array add the constructor parameters
    const token = m.contract("MyFirstToken", [25]);
    return { token };
    });

    export default MyTokenModule;
    ```

2. Deploy the contract:

```shell
npx hardhat ignition deploy .\ignition\modules\deploy.ts --network localhost
```

## License

This project is licensed under the MIT License.

## Acknowledgements

- [OpenZeppelin](https://openzeppelin.com/)
- [Hardhat](https://hardhat.org/)
