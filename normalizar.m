function [normalizado]=normalizar(audio)
maximo=max(audio);
n=length(audio);
normalizado=zeros(n,1);
for i=1:n
    normalizado(i,1)=audio(i,1)/maximo;
end
end