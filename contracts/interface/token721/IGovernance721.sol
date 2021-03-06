pragma solidity ^0.8.0;

interface IGovernance721  {
    
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    function balanceOf(address owner) external view returns (uint256 balance);
    
    function usableBalanceOf(address _owner) external returns (uint usableBalanceOf);
    
    function totalSupply() external  returns (uint256 totalSupply);
    
    function usableTotalSupply() external returns (uint256 usableTotalSupply);

    function ownerOf(uint256 tokenId) external view returns (address owner);
    
    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes calldata data) external ;

    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    function approve(address to, uint256 tokenId) external;

    function getApproved(uint256 tokenId) external view returns (address operator);

    function setApprovalForAll(address operator, bool _approved) external;

    function isApprovedForAll(address owner, address operator) external view returns (bool);
   
    function _exists(uint256 tokenId)external view returns(bool);

    function tokenOfOwnerByIndex(address owner, uint256 index)external view returns(uint);

    function expire(uint256 tokenId) external view returns(uint);
    
    function mint(uint times,address from)  external   returns(uint);
    
}