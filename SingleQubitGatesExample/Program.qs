﻿namespace SingleQubitGatesExample {

    open Microsoft.Quantum.Bitwise;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    

    operation Identity(count : Int) : Int {

        mutable resultsTotal = 0;

        using (qubit = Qubit()) {
            for (idx in 1..count) {
                I(qubit);                
                let result = MResetZ(qubit);
                set resultsTotal += result == One ? 1 | 0;
            }

            return resultsTotal;
        }
    }

    operation Bitflip(count : Int) : Int {

        mutable resultsTotal = 0;

        using (qubit = Qubit()) {
            for (idx in 1..count) {
                X(qubit);                
                let result = MResetZ(qubit);
                set resultsTotal += result == One ? 1 | 0;
            }

            return resultsTotal;
        }
    }

    operation HZH(count : Int) : Int {

        mutable resultsTotal = 0;

        using (qubit = Qubit()) {
            for (idx in 1..count) {
                H(qubit);                
                Z(qubit);                
                H(qubit);                
                let result = MResetZ(qubit);
                set resultsTotal += result == One ? 1 | 0;
            }

            return resultsTotal;
        }
    }

    operation Rx45(count : Int) : Int {

        mutable resultsTotal = 0;

        using (qubit = Qubit()) {
            for (idx in 1..count) {
                Rx(45.0, qubit);                
                let result = MResetZ(qubit);
                set resultsTotal += result == One ? 1 | 0;
            }

            return resultsTotal;
        }
    }
}