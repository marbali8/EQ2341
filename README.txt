1. CharRecog/train.m: it's used to define and train the HMMs.
2. CharRecog/test.m: it's used after train to calculate accuracy over the test set.
3. CharRecog/printing_wrong_class.m: it's used after test to plot wrongly classified sequences.
4. CharRecog/demo.m: you can write characters and uses the trained system to predict it.

other important files:
- CharRecog/DrawCharacter/ftEx6.m: creates features.
- CharRecog/LeftRightHMM.m creates left-right HMM.
- CharRecog/ErgodicHMM.m creates ergodic HMM.
- CharRecog/explore_nStates.m: compares HMM with different # of states and compares ergodic and left right.

- CharRecog/test_data.mat: test data.
- CharRecog/tdcells_a2h.mat: training data.
- CharRecog/tdarr_a2h.mat: reformatted training data.
- CharRecog/prepare_data.m: was used to reformat training data so that's it's easier for the training function.

- CharRecog/pass.m: to return the predicted character.
- CharRecog/plot_matrix.m: plots the feature vectors in a matrix (as slides 10-12).
- CharRecog/test2.m: test for another function.