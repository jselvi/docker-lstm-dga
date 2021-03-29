Docker image for the paper: Selvi, J., Rodríguez, R. J., &amp; Soria-Olivas, E. (2021). Detection of Algorithmically Generated Domain Names using LSTM Neural Networks. Under Evaluation.

The image has been uploaded to docker hub, so you can run it from there:
```
docker run -ti -p 8888:8888 jselvi/docker-lstm-dga
```

Then visit the link refereced in the container output. There are three notebooks that you can use:
* __01_Training.ipynb__: It is the code for the training phase. We have included a pre-trained model that already provide good results, but you can use this notebook to generate your own. Please keep in mind that takes hours and many attempts to create a model as good as the one provided, given that the initial configuration of weights is random.
* __02_Evaluation.ipynb__: It shows the evaluation of the model we proposed in our paper.
* __03_Prediction.ipynb__: It is a piece of code to experiment with the model and try your own domain names manually.

The evaluation of our proposed model should have the following results:
```
Confusion Matrix:
[[15743   386]
 [  341 15530]]

Accuracy:
0.9773

Precision:
0.9757

Recall:
0.9785

F1S:
0.9771

Kappa:
0.9546

Area Under Curve (AUC):
0.9955

Report:
              precision    recall  f1-score   support

         0.0     0.9788    0.9761    0.9774     16129
         1.0     0.9757    0.9785    0.9771     15871

    accuracy                         0.9773     32000
   macro avg     0.9773    0.9773    0.9773     32000
weighted avg     0.9773    0.9773    0.9773     32000
```

Finally, you can also build it yourself if you prefer so:
```
docker build -t jselvi/docker-lstm-dga .
```