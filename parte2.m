%lectura de los promedios en la base de datos
arriba=xlsread('filename1.xlsx',1,'H1:H88200');
abajo=xlsread('filename1.xlsx',2,'H1:H88200');
derecha=xlsread('filename1.xlsx',3,'H1:H88200');
izquierda=xlsread('filename1.xlsx',4,'H1:H88200');
click=xlsread('filename1.xlsx',5,'H1:H88200');
%lectura de algunas variables de prueba
% arriba1=xlsread('filename1.xlsx',1,'A1:A88200');
% derecha1=xlsread('filename1.xlsx',3,'B1:B88200');
% abajo1=xlsread('filename1.xlsx',2,'E1:E88200');
%calculo del error para comparar palabras
%mean absolute error
%la primera palabra en el nombre de los errores representa el promedio 
%la segunda palabra representa la palabra prueba
% error_arriba_arriba=mean(sqrt((arriba-arriba1).^2))
% error_abajo_abajo=mean(sqrt((abajo-abajo1).^2))
% error_arriba_abajo=mean(sqrt((abajo1-arriba).^2))
% error_abajo_arriba=mean(sqrt((abajo-arriba1).^2))
% error_arriba_derecha=mean(sqrt((arriba-derecha1).^2))
% error_derecha_arriba=mean(sqrt((derecha-arriba1).^2))
% error_derecha_derecha=mean(sqrt((derecha-derecha1).^2))
% error_derecha_abajo=mean(sqrt((derecha-abajo1).^2))
% error_abajo_derecha=mean(sqrt((derecha1-abajo).^2))
%comando para setear la posicion del cursor
 %set(0,'PointerLocation',[100 100])
 %comando para encontrar la posicion del cursor
 %get(0,'PointerLocation')
 recObj = audiorecorder(44100, 16, 1, -1);
 disp('Start speaking...')
 recordblocking(recObj, tiempo_grabacion);
 tiempo_grabacion=2
 frecuencia_muestreo=get(recObj,'SampleRate')
 play(recObj);
 palabra = getaudiodata(recObj);
 L=size(palabra,1);
 N=2/(frecuencia_muestreo);
 ft=abs(fft(palabra))/round(L/2);
 transformadas(:,i)=ft;
 u=0:1/(N*round(L/2)):1/N;
 c = smooth(u',ft(1:round(L/2)+1),0.1,'loess');
 errores=[mean(sqrt((arriba-palabra).^2)) mean(sqrt((abajo-palabra).^2)) mean(sqrt((derecha-palabra).^2)) mean(sqrt((izquierda-palabra).^2)) mean(sqrt((click-palabra).^2))]
 minimo=min(errores);
 if minimo==errores(1)
     disp('la palabra es arriba')
 elseif minimo==errores(2)
     disp('la palabra es abajo')
 elseif minimo==errores(3)
     disp('la palabra es derecha')
 elseif minimo==errores(4)
     disp('la palabra es izquierda')
 elseif minimo==errores(5)
     disp('la palabra es click')
 
 end