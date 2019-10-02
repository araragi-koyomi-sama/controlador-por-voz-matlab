tiempo_grabacion=2;
grabacion1=[];
filename='C:\Users\Laura Monsalve\Documents\UdeA\M�todos de Fourier\trabajos matlab';
vect=[1 2 3 4 5 6 7];
suma1=zeros(1,88200);
suma2=[];
suma3=[];
suma4=[];
suma5=[];
for i=1:7
    recObj = audiorecorder;
    %recObj = audiorecorder(44100, 16, 1, -1);
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
        a=xlswrite('filename',myRecording,1,strcat('A',num2str(f)))
    elseif i==2
        a=xlswrite('filename',myRecording,1,strcat('B',num2str(f)))
    elseif i==3
        a=xlswrite('filename',myRecording,1,strcat('C',num2str(f))) 
    elseif i==4
        a=xlswrite('filename',myRecording,1,strcat('D',num2str(f))) 
    elseif i==5
        a=xlswrite('filename',myRecording,1,strcat('E',num2str(f)))
    elseif i==6
        a=xlswrite('filename',myRecording,1,strcat('F',num2str(f)))
    else 
        a=xlswrite('filename',myRecording,1,strcat('G',num2str(f)))
        
    end
    suma1=suma1+myRecording;     
end
promedio=suma1/7
fft(suma1)
for i=1:7
    recObj = audiorecorder;
    disp ('Palabra 2')
    disp('Start speaking...')
    recordblocking(recObj, tiempo_grabacion);
    disp('End of Recording...');
    frecuencia_muestreo=get(recObj,'SampleRate');
    % Play back the recording.
    play(recObj)
    % Store data in double-precision array.
    myRecording = getaudiodata(recObj);
    plot(myRecording);
    L=size(myRecording,1);
    pause(3);
    N=2/(frecuencia_muestreo);
    ft=abs(fft(myRecording))/round(L/2);
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
        a=xlswrite('filename',myRecording,2,strcat('A',num2str(f)))
    elseif i==2
        a=xlswrite('filename',myRecording,2,strcat('B',num2str(f)))
    elseif i==3
        a=xlswrite('filename',myRecording,2,strcat('C',num2str(f))) 
    elseif i==4
        a=xlswrite('filename',myRecording,2,strcat('D',num2str(f))) 
    elseif i==5
        a=xlswrite('filename',myRecording,2,strcat('E',num2str(f)))
    elseif i==6
        a=xlswrite('filename',myRecording,2,strcat('F',num2str(f)))
    else 
        a=xlswrite('filename',myRecording,2,strcat('G',num2str(f)))
        
    end
    suma2=suma2+myRecording

end
promedio=suma2/7
fft(suma2)

for i=1:7
    recObj = audiorecorder;
    disp ('Palabra 3')
    disp('Start speaking...')
    recordblocking(recObj, tiempo_grabacion);
    disp('End of Recording...');
    frecuencia_muestreo=get(recObj,'SampleRate');
    % Play back the recording.
    play(recObj)
    % Store data in double-precision array.
    myRecording = getaudiodata(recObj);
    plot(myRecording);
    L=size(myRecording,1);
    pause(3);
    N=2/(frecuencia_muestreo);
    ft=abs(fft(myRecording))/round(L/2);
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
        a=xlswrite('filename',myRecording,3,strcat('A',num2str(f)))
    elseif i==2
        a=xlswrite('filename',myRecording,3,strcat('B',num2str(f)))
    elseif i==3
        a=xlswrite('filename',myRecording,3,strcat('C',num2str(f))) 
    elseif i==4
        a=xlswrite('filename',myRecording,3,strcat('D',num2str(f))) 
    elseif i==5
        a=xlswrite('filename',myRecording,3,strcat('E',num2str(f)))
    elseif i==6
        a=xlswrite('filename',myRecording,3,strcat('F',num2str(f)))
    else 
        a=xlswrite('filename',myRecording,3,strcat('G',num2str(f)))
        
    end
    suma3=suma3+myRecording

end
promedio=suma3/7
fft(suma3)

for i=1:7
    recObj = audiorecorder;
    disp ('Palabra 4')
    disp('Start speaking...')
    recordblocking(recObj, tiempo_grabacion);
    disp('End of Recording...');
    frecuencia_muestreo=get(recObj,'SampleRate');
    % Play back the recording.
    play(recObj)
    % Store data in double-precision array.
    myRecording = getaudiodata(recObj);
    plot(myRecording);
    L=size(myRecording,1);
    pause(3);
    N=2/(frecuencia_muestreo);
    ft=abs(fft(myRecording))/round(L/2);
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
    f=1
    if i==1
        a=xlswrite('filename',myRecording,4,strcat('A',num2str(f)))
    elseif i==2
        a=xlswrite('filename',myRecording,4,strcat('B',num2str(f)))
    elseif i==3
        a=xlswrite('filename',myRecording,4,strcat('C',num2str(f))) 
    elseif i==4
        a=xlswrite('filename',myRecording,4,strcat('D',num2str(f))) 
    elseif i==5
        a=xlswrite('filename',myRecording,4,strcat('E',num2str(f)))
    elseif i==6
        a=xlswrite('filename',myRecording,4,strcat('F',num2str(f)))
    else 
        a=xlswrite('filename',myRecording,4,strcat('G',num2str(f)))
        
    end
    suma4=suma4+myRecording

end
promedio=suma4/7

for i=1:7
    recObj = audiorecorder;
    disp ('Palabra 5')
    disp('Start speaking...')
    recordblocking(recObj, tiempo_grabacion);
    disp('End of Recording...');
    frecuencia_muestreo=get(recObj,'SampleRate');
    % Play back the recording.
    play(recObj)
    % Store data in double-precision array.
    myRecording = getaudiodata(recObj);
    plot(myRecording);
    L=size(myRecording,1);
    pause(3);
    N=2/(frecuencia_muestreo);
    ft=abs(fft(myRecording))/round(L/2);
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
    f=1
    if i==1
        a=xlswrite('filename',myRecording,5,strcat('A',num2str(f)))
    elseif i==2
        a=xlswrite('filename',myRecording,5,strcat('B',num2str(f)))
    elseif i==3
        a=xlswrite('filename',myRecording,5,strcat('C',num2str(f))) 
    elseif i==4
        a=xlswrite('filename',myRecording,5,strcat('D',num2str(f))) 
    elseif i==5
        a=xlswrite('filename',myRecording,5,strcat('E',num2str(f)))
    elseif i==6
        a=xlswrite('filename',myRecording,5,strcat('F',num2str(f)))
    else 
        a=xlswrite('filename',myRecording,5,strcat('G',num2str(f)))
        
    end
    suma5=suma5+myRecording
 
end
promedio=suma5/7
