#killall python
#python fl_master.py
#sleep 2
python -u fl_server.py >log/server0.log &
sleep 2
for ((i=0;i<35;i++))
do
python -u fl_trainer.py $i >log/trainer_step5_$i.log &
sleep 2
done
