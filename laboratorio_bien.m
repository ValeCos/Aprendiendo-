%%
%Estoy haciendo una modificación- soy vale
%quisio
%otra modificación quisio
%una mas 
%Imagen Blanco, Balance 05

eb=imread('5072018rawbug05.arw');
%imshow(eb)
eb=eb(900:1200,:,:);
ebg=rgb2gray(eb);
ebp=mean(ebg);
m=max(ebp);
ebpn=ebp./m;
%figure('name','blanco'), subplot(4,1,1), imshow (eb)
%subplot(4,1,2), imshow (ebg)
%subplot(4,1,3), imshow (ebp)
%subplot(4,1,4), imshow (ebpn)

n=9;
for a=0:9:3275
    b=mean(ebpn(a+1:a+n+1));
    if a == 0
        EB=[b];
    else 
        EB=[EB b];
    end 
end

%figure('name','blanco'), plot(EB)
%D=EB';
%xlswrite('blanco05.xlsx',D);
%%
%Imagen 11ug, Balance 05

e1=imread('5072018raw11ug05.arw');
        %imshow (e1)
e1=e1(900:1200,:,:);
        %e1p=mean(e1);
        %e1pn=e1p./max(max(e1p));
        %figure('name','11ug'), subplot(3,1,1), imshow (e1)
        %subplot(3,1,2), imshow (e1p)
        %subplot(3,1,3), imshow (e1pn);
e1g=rgb2gray(e1); %e1g=rgb2gray(e1pn);
        %figure('name','11ug'), subplot(2,1,1), imshow (e1g)
        %subplot(2,1,2), plot (e1g)

e1p=mean(e1g);
e1pn=e1p./m;
%figure('name','11ug'), subplot(4,1,1), imshow (e1)
%subplot(4,1,2), imshow (e1g)
%subplot(4,1,3), imshow (e1p)
%subplot(4,1,4), imshow (e1pn)

n=9;
for a=0:9:3275
    b=mean(e1pn(a+1:a+n+1));
    if a == 0
        E1=[b];
    else 
        E1=[E1 b];
    end 
end

%figure('name','11ug'), plot(E1)
%A=E1';
%xlswrite('11ug05.xlsx',A);

%%
%Imagen 1.66ug, Balance 05

e2=imread('5072018raw166ug05.arw');
e2=e2(900:1200,:,:);
        %e1p=mean(e1);
        %e1pn=e1p./max(max(e1p));
        %figure('name','11ug'), subplot(3,1,1), imshow (e1)
        %subplot(3,1,2), imshow (e1p)
        %subplot(3,1,3), imshow (e1pn);
e2g=rgb2gray(e2); %e1g=rgb2gray(e1pn);
        %figure('name','11ug'), subplot(2,1,1), imshow (e1g)
        %subplot(2,1,2), plot (e1g)

e2p=mean(e2g);
e2pn=e2p./m;
%figure('name','1.66ug'), subplot(4,1,1), imshow (e2)
%subplot(4,1,2), imshow (e2g)
%subplot(4,1,3), imshow (e2p)
%subplot(4,1,4), imshow (e2pn)

n=9;
for a=0:9:3275
    b=mean(e2pn(a+1:a+n+1));
    if a == 0
        E2=[b];
    else 
        E2=[E2 b];
    end 
end

%figure('name','1.66ug'), plot(E2)
%B=E2';
%xlswrite('166ug05.xlsx',B);

%%
%Imagen 8.32ug, Balance 05

e3=imread('5072018raw832ug05.arw');
e3=e3(900:1200,:,:);
e3g=rgb2gray(e3);
e3p=mean(e3g);
e3pn=e3p./m;
%figure('name','8.32ug'), subplot(4,1,1), imshow (e3)
%subplot(4,1,2), imshow (e3g)
%subplot(4,1,3), imshow (e3p)
%subplot(4,1,4), imshow (e3pn)

n=9;
for a=0:9:3275
    b=mean(e3pn(a+1:a+n+1));
    if a == 0
        E3=[b];
    else 
        E3=[E3 b];
    end 
end

%figure('name','8.32ug'), plot(E3)
%C=E3';
%xlswrite('832ug05.xlsx',C);

%%
%Ploteos

x=0:0.1:1;
y=350:50:750;

figure('name','promedios')
subplot(4,1,1),imshow(EB)
subplot(4,1,2),imshow(E2)
subplot(4,1,3),imshow(E3)
subplot(4,1,4),imshow(E1)

%figure('name','ploteos')
%subplot(4,1,1),plot(EB,'black')
%subplot(4,1,2),plot(E2,'blue')
%subplot(4,1,3),plot(E3,'green')
%subplot(4,1,4),plot(E1,'red')

figure('name','comparativa'), plot(EB,'black')
hold on
plot(E2,'blue')
plot(E3,'green')
plot(E1,'red')
hold off

%%
%absorbancia

figure('name','absorbancia'), plot(-log(E1./EB),'red')
hold on
plot(-log(E2./EB),'blue')
plot(-log(E3./EB),'green')
hold off