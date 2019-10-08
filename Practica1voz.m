tiempo_grabacion=2;
grabacion1=[];
filename='C:\Users\Laura Monsalve\Documents\UdeA\Métodos de Fourier\trabajos matlab';
vect=[1 2 3 4 5 6 7];
suma1=zeros(88200,1);
suma2=zeros(88200,1);
suma3=zeros(88200,1);
suma4=zeros(88200,1);
suma5=zeros(88200,1);
transformadas=[];
for i=1:7
    recObj = audiorecorder(44100, 16, 1, -1);
    disp ('Palabra 1')
    disp('Start speaking...')
    recordblocking(recObj, tiempo_grabacion);
    disp('End of Recording...');
    frecuencia_muestreo=get(recObj,'SampleRate');
    %frecuencia_muestreo=get(recObj,'TotalSamples',88200);
    % Play back the recording.
    play(recObj)
    % Store data in double-precision array.
    myRecording = getaudiodata(recObj);
    plot(myRecording);
    L=size(myRecording,1);
    pause(3);
    N=2/(frecuencia_muestreo);
    ft=abs(fft(myRecording))/round(L/2);
    %matriz para guardar transformadas
    transformadas(:,i)=ft;
    u=0:1/(N*round(L/2)):1/N;
    plot(u',ft(1:round(L/2)+1))
     axis([0 1000 0 0.01])
    % Plot single-sided amplitude spectrum.
    title('Espectro de Amplitude de una sola cara de y(t)')
    xlabel('Frequencia (Hz)')
    ylabel('|Y(f)|')
    pause(5)
    c = smooth(u',ft(1:round(L/2)+1),0.1,'loess');
    plot(u',ft(1:round(L/2)+1),'b.',u',c,'r-')
    f=1;
    if i==1
        xlswrite('filename.xlsx',ft,1,strcat('A',num2str(f)))
    elseif i==2
        xlswrite('filename.xlsx',ft,1,strcat('B',num2str(f)))
    elseif i==3
        xlswrite('filename.xlsx',ft,1,strcat('C',num2str(f))) 
    elseif i==4
        xlswrite('filename.xlsx',ft,1,strcat('D',num2str(f))) 
    elseif i==5
        xlswrite('filename.xlsx',ft,1,strcat('E',num2str(f)))
    elseif i==6
        xlswrite('filename.xlsx',ft,1,strcat('F',num2str(f)))
    else 
        xlswrite('filename.xlsx',ft,1,strcat('G',num2str(f)))
        
    end
    suma1=suma1+myRecording;     
end
errores=[];
promedio=suma1/7;
promedioft=abs(fft(promedio))/round(L/2);
for i=1:7
    resta=mean(abs(promedio-transformadas(i)));
    errores(i)=resta;
end
xlswrite('filename.xlsx',promedioft,1,strcat('H',num2str(f)))
xlswrite('filename.xlsx',errores',1,'I1')


