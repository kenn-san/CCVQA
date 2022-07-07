cd .. 

export PYTHONPATH="$PYTHONPATH:$PWD"
echo $PYTHONPATH


CONFIG_PATH='config_release/msvd_qa.json'

TXT_DB='data/msvd_qa/txt/test.jsonl'
IMG_DB='data/msvd_qa/videos'

#Run multiple steps (10 times once)
#

for (( STEP=3600; STEP<=3600; STEP+=450 ))
do 
   echo "Step:$STEP"
   horovodrun -np 1 python src/tasks/run_video_qa.py \
      --do_inference 1 \
      --inference_split test \
      --inference_model_step $STEP \
      --inference_txt_db $TXT_DB \
      --inference_img_db $IMG_DB \
      --inference_batch_size 32 \
      --output_dir output/downstreams/msvd_qa/private/20220704fusion \
      --config $CONFIG_PATH
done