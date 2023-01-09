python ../val.py --img 512 --data $1 --weights "../vanilla_medium/train/exp/weights/best.pt"  &>> "vanilla_medium_test.txt"

for (( i = 1; i < 10; i++ )); do
  python ../val.py --img 512 --data $1 --weights "../vanilla_medium/train/exp${i}/weights/best.pt"  &>> "vanilla_medium_test.txt"
done

  python ../val.py --img 512 --data $1 --weights "../runs/train/exp/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp1/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp2/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp3/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp4/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp6/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp7/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp8/weights/best.pt"  &>> "augment_medium_test.txt"
  python ../val.py --img 512 --data $1 --weights "../runs/train/exp9/weights/best.pt"  &>> "augment_medium_test.txt"


