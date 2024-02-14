# IoT Analytics in PPA course

# Time Series Classification on your laptop WSL2 Ubuntu 22.04 or MacOS using TensorFlow Lite

*Reference to Lisa Ong Edge Computing Workshop Materials*

This example predicts a value using time series data from a Smart Factory.

1. Train model using Google Colab
2. Convert model to compressed version for Tensorflow Lite
3. Perform Inference on a Raspberry Pi using Tensorflow Lite

Dataset: https://www.kaggle.com/inIT-OWL/versatileproductionsystem

Overview:
![Workflow](https://www.tensorflow.org/lite/images/convert/workflow.svg)

## Training and TFLite Compression
1. Open notebook from Google Colab: [edge_time_series_classification.ipynb](edge_time_series_classification.ipynb)
2. Make a copy of the notebook
3. Run each cell of the notebook, step by step
4. Download *.pkl and *.tflite from Colab storage to your laptop

## Inference
This phase uses the TensorFlow Lite Python API to perform inference using your compressed TF Lite model.

Documentation: https://www.tensorflow.org/lite/guide/inference#running_a_model

1. Deploy the *.pkl and *.tflite files to your laptop WSL2 'Ubuntu 22.04' or MacOS. You may need to type 'explorer.exe .' when you are at your home directory. You should copy the files to this folder:
```
~/ppaiot/EdgeAnalytics
``` 
2. From the WSL2 Ubuntu 22.04 or MacOS terminal, launch docker image containing Tensorflow 2.0 for Python 3.7
```
cd ~/ppaiot/EdgeAnalytics/docker
sh ./launch_docker.sh
```
3. From the **docker container** running on the Raspberry Pi 3, evaluate the saved TF Lite model using inputs
```
cd edge
python3 evaluate.py input_file
```
