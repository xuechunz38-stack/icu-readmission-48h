#!/usr/bin/env bash
python -m pip install -r requirements.txt
python src/features.py
python src/train.py
python src/eval.py
