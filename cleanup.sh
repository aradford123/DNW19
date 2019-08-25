#!/bin/bash
source env3/bin/activate
jupyter nbconvert ./.notebooks/01_API.ipynb --to notebook --ClearOutputPreprocessor.enabled=True --stdout > ./lab-notebooks/01_API.ipynb
jupyter nbconvert ./.notebooks/02_SDK.ipynb --to notebook --ClearOutputPreprocessor.enabled=True --stdout > ./lab-notebooks/02_SDK.ipynb
