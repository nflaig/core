// SPDX-License-Identifier: UNLICENSED
// for testing purposes only

pragma solidity 0.8.25;

import {PredepositGuarantee} from "contracts/0.8.25/vaults/predeposit_guarantee/PredepositGuarantee.sol";

contract PredepositGuarantee__HarnessForFactory is PredepositGuarantee {
    constructor(
        bytes4 _genesisForkVersion,
        uint64 _gloasSlot,
        uint64 _slotsPerEpoch,
        uint64 _secondsPerSlot,
        uint64 _genesisTime
    ) PredepositGuarantee(_genesisForkVersion, _gloasSlot, _slotsPerEpoch, _secondsPerSlot, _genesisTime) {}
}
