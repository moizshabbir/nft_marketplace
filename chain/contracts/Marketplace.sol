//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;



contract Marketplace {
    struct Item {
        uint256 id;
        address nftContract;
        uint256 price;
    }

    function createItem(address nftContract,uint256 tokenId,uint256 price) public payable {

    }

    function deleteItem(uint256 itemId) public {

    }

    function createSale(address nftContract,uint256 id) public payable {

    }

    function fetchActiveItems() public view returns (Item[] memory) {

    }
    
    function fetchPurchasedItems() public view returns (Item[] memory) {

    }
    
    function fetchMyItems() public view returns (Item[] memory) {

    }
}