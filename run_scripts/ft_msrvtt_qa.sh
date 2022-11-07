cd .. 

export PYTHONPATH="$PYTHONPATH:$PWD"
echo $PYTHONPATH

CONFIG_PATH='config_release/msrvtt_qa.json'

horovodrun -np 1 python src/tasks/run_video_qa.py \
      --config $CONFIG_PATH \
      --output_dir output/downstreams/msrvtt_qa/private/20221022CLIP2Stream7thFrameVTTtest-UsingFixedPretrained-2Head-Test
