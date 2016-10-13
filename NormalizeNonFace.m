srcFiles = dir('training_nonfaces\*.jpg');  % the folder in which ur images exists
for j = 1 : 120
    filename = strcat('training_nonfaces\',srcFiles(j).name);
   % image=imread(filename);
    image=read_gray(filename);
    b = VarNorm(image);
   % img=imcrop(b,[100 100 99 99]);
    imwrite(b,filename);
    
end
