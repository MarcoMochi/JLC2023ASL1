Installation instructions for different Operating Systems building from sources or using Anaconda for Clingo v5.6.2 can be found here:
https://github.com/potassco/clingo/blob/master/INSTALL.md, https://potassco.org/clingo/,  https://github.com/potassco/clingo/releases/tag/v5.6.2

There are 4 main folders, each for every setting: Replicate, OPT1, and OPT2 and one for the OPT1 translated instances: translated.

Inside each folder representing one scenario there is the corresponding encoding and 3 subfolders, each corresponding to one hospital, for every hospital there are 10 instances.

To run the file you can execute the following command: 

./clingo SETTING/encoding.lp SETTING/HOSPITAL/inputN.lp --restart-on-model --parallel-mode 4 --time-limit=60

i.e. ./clingo OPT2/encoding OPT2/Sanremo/input1.lp --restart-on-model --parallel-mode 4 --time-limit=60

Inside the folder for the translated instances there are 2 sub-folders, one corresponding to the translations obtained from the original encoding (old) and one for the instances obtained from the new encoding (optimised). Inside each sub-folder there are 10 instances, corresponding to the Imperia instances, translated into pseudo-Boolean instances in the who format.

To run the file you can execute one of the following commands:

clasp instanceN.opb --time-limit 60

gurobi_cl MIPGap=0 Threads=0 instanceN.opb
 
