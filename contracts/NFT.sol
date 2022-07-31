// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";




contract NFT is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address contractAddress;

    constructor(address marketplaceAddress) ERC721("Metaverse Tokens", "METT"){
        contractAddress = marketplaceAddress;
    }

   function createToken(string memory TokenURI) public returns (uint){
    require(msg.sender == 0xdF3e18d64BC6A983f673Ab319CCaE4f1a57C7097, "Transaction Rejected! Account Not Authorized to Create NFT");
    _tokenIds.increment();
    uint256 newItemId = _tokenIds.current();

    _mint(msg.sender, newItemId);
    _setTokenURI(newItemId, TokenURI);
    setApprovalForAll(contractAddress, true);
    return newItemId;
   }
   function giveResaleApproval() public {
    
   setApprovalForAll(contractAddress, true);
    return; 
    } 
}