cd .. 

export PYTHONPATH="$PYTHONPATH:$PWD"
echo $PYTHONPATH

CONFIG_PATH='config_release/msrvtt_qa.json'

TXT_DB='data/msrvtt_qa/txt/test.jsonl'
IMG_DB='/temp/MSRVTT/videos/all'

for (( STEP=26250; STEP>=21250; STEP-=1250 ))
do 
horovodrun -np 1 python src/tasks/run_video_qa.py \
      --do_inference 1 \
      --inference_split test \
      --inference_model_step $STEP \
      --inference_txt_db $TXT_DB \
      --inference_img_db $IMG_DB \
      --inference_batch_size 32 \
      --output_dir output/downstreams/msrvtt_qa/private/20220919CLIP2Stream7thFrameVTTtest-UsingFixedPretrained-2Head \
      --config $CONFIG_PATH
done