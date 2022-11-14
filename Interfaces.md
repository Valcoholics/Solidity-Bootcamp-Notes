# What is an Interface?
Goal: Identify two instances of interfaces being used and summarize respectively why one might want to implement them

## OOPS Four Pillars
* Abstraction.
* Encapsulation.
* Inheritance.
* Polymorphism.

### Interfaces 
- fall within the abstraction pillar, and data abstraction is the process of hiding certain details and showing only essential information to the user.  The user will have the information on what the object does, instead of how it does it.

Interfaces are created using `interface` keyword. Following are the key characteristics of an interface.
* Interface can not have any function with implementation.
* Functions of an interface can be only of type external.
* Interface can not have constructor.
* Interface can not have state variables.
* Interface can have enum, structs which can be accessed using interface name dot notation.

### Interface vs Abstract contract 
- Abstract contracts are base contracts in which at least one of their functions lacks an implementation.
- Other contracts can inherit from abstract contracts.
- Interfaces are similar to abstract contracts in that they help foster extensibility, however, they cannot include any implemented functions.

### Takeaway: 
Primarily used to whenever you need to guide the programmer or, make a contract specifying how the methods and fields of a type should be. Abstract contracts and interfaces are similar, however, abstract contracts are better suited for situations where some heavy lifting is required. Conversely, interfaces are used strictly as empty functions/representations. Functions in an interface are neither compiled nor deployed, probably more gas efficient. 

## The two interfaces I picked to showcase. 

[Aragon Protocol ITreasury.sol](https://github.com/aragon/protocol/blob/e64e2dd9ef8715ef6a2c4ee9195e0c14bf62e84c/packages/evm/contracts/treasury/ITreasury.sol)

#### Why this would be used and why one may to implement it:
ITreasury.sol is used to borrow bulky admin functions like “assign token” and “withdraw tokens” which someone can assume will be used multiple times during they life of their project. This interface serves the developer in ways where this can me used for any feature within the protocol where there is an address they need to withdraw or assign funds, this helps because they don’t have to redo this functions directly in each instance of a “treasury.”

[Nouns Protocol IERC721Votes.sol](https://github.com/ourzora/nouns-protocol/blob/main/src/lib/interfaces/IERC721Votes.sol)

#### Why this would be used any why one may want to implement it: 

This interface is a toolbox specifically for the ERC721Vote.sol contract updated by ZORA where NFTs can import IERC721vote.sol getter/setter functions for voting as well as delegation functions. With the nouns protocol, there is an endless number of NFTs that can be created, all of which must be votable at some level, but it would be inconvenient to include "getVotes" and "delegateBySig" within each and every unique NFT contract. Someone would use this to give their ERC721s voting abilities. 

## Demonstration: Your own contract, however rudimentary you choose, alongside an interface that it inherits from

