checkpoints="$1/train/exp*/weights/best.pt"
for i in ${checkpoints[@]} ; do
      python ../val.py --img 512 --data $2 --weights $i  &>> "xl_ind_results.txt"
done