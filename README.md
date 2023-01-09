# Nearest Neighbour Distributional Shift Detection 
Code for my submission to NjordVid, the fishing trawler analytics challange of MediEval 2022. 
[Paper](https://2022.multimediaeval.com/paper8817.pdf) 

# WIP refactoring
The code here is quite messy due to a fairy lengthy prototyping stage. A cleaner implementation is available [here](https://github.com/BirkTorpmannHagen/robustSD)
# Repeating experiments
To repeat the distributional shift detection experiments, first train a VAE with run_vae.py, modify the path to the checkpoint in nndsd.py, then run nndsd.py.
To repeat the generalizability experiments, run the desired train and val scripts in the scripts folder, passing the folds in folds/ as required. 
