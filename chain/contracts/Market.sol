//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Market {
    enum State { Created, Release, Inactive }
    struct MarketItem {
        uint id;
        address nftContract;
        uint256 tokenId;
        address payable seller;
        address payable buyer;
        uint256 price;
        State state;
    }

    mapping(uint256 => MarketItem) private marketItems;

    uint256 public listingFee = 0.025 ether;
    function getListingFee() public view returns (uint256) {}

    function createMarketItem(address nftContract,uint256 tokenId,uint256 price) public payable {}
    function deleteMarketItem(uint256 itemId) public {}
    function createMarketSale(address nftContract,uint256 id) public payable {}

    function fetchActiveItems() public view returns (MarketItem[] memory) {}
    function fetchMyPurchasedItems() public view returns (MarketItem[] memory) {}
    function fetchMyCreatedItems() public view returns (MarketItem[] memory) {}
}