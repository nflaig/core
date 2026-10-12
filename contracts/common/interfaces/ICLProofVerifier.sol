// SPDX-FileCopyrightText: 2026 Lido <info@lido.fi>
// SPDX-License-Identifier: GPL-3.0

// See contracts/COMPILERS.md
// solhint-disable-next-line lido/fixed-compiler-version
pragma solidity >=0.8.0;

/**
 * @title ICLProofVerifier
 * @author Lido
 * @notice Input types for the `CLProofVerifier` family of contracts
 */
interface ICLProofVerifier {
    /**
     * @notice user input for validator proof verification
     * @custom:proof array of merkle proofs from parent(pubkey,wc) node to Beacon block root
     * @custom:pubkey of validator to prove
     * @custom:validatorIndex of validator in CL state tree
     * @custom:childBlockTimestamp of EL block that has parent block beacon root in BEACON_ROOTS contract
     * @custom:slot of the beacon block for which the proof is generated
     * @custom:proposerIndex of the beacon block for which the proof is generated
     */
    struct ValidatorWitness {
        bytes32[] proof;
        bytes pubkey;
        uint256 validatorIndex;
        uint64 childBlockTimestamp;
        uint64 slot;
        uint64 proposerIndex;
    }

    /**
     * @notice user input for builder proof verification, only possible against a Gloas beacon state
     * @custom:proof array of merkle proofs from Builder container root to Beacon block root
     * @custom:pubkey of builder to prove
     * @custom:builderIndex of builder in CL state tree
     * @custom:version of the builder
     * @custom:executionAddress of the builder
     * @custom:balance of the builder in gwei
     * @custom:depositEpoch of the builder
     * @custom:withdrawableEpoch of the builder
     * @custom:childBlockTimestamp of EL block that has parent block beacon root in BEACON_ROOTS contract
     * @custom:slot of the beacon block for which the proof is generated
     * @custom:proposerIndex of the beacon block for which the proof is generated
     */
    struct BuilderWitness {
        bytes32[] proof;
        bytes pubkey;
        uint256 builderIndex;
        uint8 version;
        address executionAddress;
        uint64 balance;
        uint64 depositEpoch;
        uint64 withdrawableEpoch;
        uint64 childBlockTimestamp;
        uint64 slot;
        uint64 proposerIndex;
    }
}
