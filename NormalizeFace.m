srcFiles = dir('training_faces\*.bmp');  % the folder in which ur images exists
for i = 1 : 50
    filename = strcat('training_faces\',srcFiles(i).name);
    image=imread(filename);
    a = VarNorm(image);
    imwrite(a,filename);
    
end
