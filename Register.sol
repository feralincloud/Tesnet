// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Register {
    string public github;
        address public owner;
            
                struct Referral {
                        address referralAddress;
                                string referralString;
                                    }
                                        
                                            Referral[] public referrals;
                                                
                                                    constructor() {
                                                            github = "feralincloud";
                                                                    owner = 0xbca02672362207C911d984F8aB1574DD37336C5E;
                                                                        }
                                                                            
                                                                                function addReferral(address _referralAddress, string memory _referralString) external {
                                                                                        require(msg.sender == owner, "Only the owner can add referrals.");
                                                                                                referrals.push(Referral(_referralAddress, _referralString));
                                                                                                    }
                                                                                                        
                                                                                                            function totalReferrals() public view returns (uint256) {
                                                                                                                    return referrals.length;
                                                                                                                        }
                                                                                                                        }