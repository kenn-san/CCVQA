# CLIP-guided Cross-domain Video Question Answering (CCVQA)

## VIDEO QUESTION ANSWERING USING CLIP-GUIDED VISUAL-TEXT ATTENTION [[Paper](https://arxiv.org/abs/2303.03131)]

[Shuhong Ye](https://github.com/kenn-san), [Weikai Kong](https://github.com/WeikaiKong), [Chenglin Yao](https://www.researchgate.net/profile/Chenglin_Yao2), [Jianfeng Ren](https://research.nottingham.edu.cn/en/persons/jianfeng-ren), [Xudong Jiang](https://personal.ntu.edu.sg/exdjiang/)

![overview3](/pics/overview3.png)

## Requirements

This work is tested on Ubuntu 20.04 LTS. The requirements can be installed running:

```bash
cd env && bash install_pkg.sh
```

## Training

### Data Preparation 

[MSRVTT, MSVD videos & annotations](https://www.mediafire.com/folder/h14iarbs62e7p/shared)

[Download pre-trained checkpoint](https://storage.googleapis.com/sfr-vision-language-research/ALPRO/output.zip)

Set dataset, and checkpoint paths in `config_release/msrvtt_qa.json` and  `config_release/msvd_qa.json`

Run the finetuning scripts below:

```bash
cd run_scripts
bash ft_msrvtt_qa.sh
bash ft_msvd_qa.sh
```

## Testing

Run the inference scripts below:

```bash
cd run_scripts
bash inf_msrvtt_qa.sh
bash inf_msvd_qa.sh
```

## Citation

```bibtex
@article{ye2023video,
  title={Video Question Answering Using CLIP-Guided Visual-Text Attention},
  author={Ye, Shuhong and Kong, Weikai and Yao, Chenglin and Ren, Jianfeng and Jiang, Xudong},
  journal={arXiv preprint arXiv:2303.03131},
  year={2023}
}
```

## Credit

The implementation of this work relies on [ALPRO](https://github.com/isabella232/ALPRO)