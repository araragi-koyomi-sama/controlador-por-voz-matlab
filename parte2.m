%lectura de los promedios en la base de datos
arriba=xlsread('filename1.xlsx',1,'H1:H88200');
abajo=xlsread('filename1.xlsx',2,'H1:H88200');
derecha=xlsread('filename1.xlsx',3,'H1:H88200');
izquierda=xlsread('filename1.xlsx',4,'H1:H88200')
click=xlsread('filename1.xlsx',5,'H1:H88200')
%lectura de algunas variables de prueba
arriba1=xlsread('filename1.xlsx',1,'A1:A88200');
derecha1=xlsread('filename1.xlsx',3,'A1:A88200');
%calculo del error para comparar palabras
%es mejor utilizar el cuadrado que el valor absoluto para asegurar
%presición
resta=arriba