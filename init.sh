#!/bin/bash

if [ ! -f data/train.ft.txt ]; then
    printf "\n\nPREPARING DATA...\n"
    cat data/train.chunk.* > data/train.ft.txt
    cat data/test.chunk.* > data/test.ft.txt
fi

if [ ! -d fastText/fasttext ] ; then
    printf "\n\nDOWNLOADING FASTTEXT...\n"
    git clone https://github.com/facebookresearch/fastText.git
fi

if [ ! -f fastText/fasttext ]; then
    printf "\n\nBUILDING FASTTEXT...\n"
    git clone https://github.com/facebookresearch/fastText.git
    cd fastText
    make
    cd ..
fi
