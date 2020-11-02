modelJaringan = newff(minmax(dataLatih), [300,2], {'logsig','logsig'}, 'traingdx');
init(modelJaringan);
modelJaringan.trainParam.epochs=1000;
modelJaringan.trainParam.goal=0.1;
tic;
modelJaringan = train(modelJaringan, dataLatih, target);
waktu_training = toc;