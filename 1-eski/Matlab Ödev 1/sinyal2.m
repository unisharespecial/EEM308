%Buðra Bayram
%20193272

%Soru : 166 (a)

b1=[4];
a1=[1 2 17];
ROC=-2;

poles=roots(a1); % determine poles
zeros=roots(b1); % determine zeros
poles=poles(:); % make into column vector
zeros=zeros(:); % make into column vector

disp('Soru : 166 (a) için');
disp('Kutuplar:');
disp(poles);

figure (1);


MaxI=max(abs(imag([poles; zeros;j]))); % Determine size of diagram
MaxR=max(abs(real([poles; zeros;1]))); % 
plot(1.5*[-MaxR MaxR],[0 0],'w')     % Plot the real axis
hold on
text(1.5*MaxR,0,' Re')
plot([0 0],1.5*[-MaxI MaxI],'w')     % Plot the imag axis
text(0,1.5*MaxI,' Im')
plot(real(zeros),imag(zeros),'o')   % Plot zeros
plot(real(poles),imag(poles),'x')   % Plot poles


  if(any(real(poles)<ROC))           % Any poles to the left?
    lpole=max(real(poles(real(poles)<ROC)));
    plot([lpole lpole],1.5*[-MaxI MaxI],'w--')
  end
  if(any(real(poles)>ROC))           % Any poles to the right?
    rpole=min(real(poles(real(poles)>ROC)));
    plot([rpole rpole],1.5*[-MaxI MaxI],'w--')
  end
  text(ROC,-1.25*MaxI,'ROC')          % Label the ROC

%axis('square');                      % Make square aspect ratio
grid
title('Soru : 166 (a)');
hold off

%------------------------------------------------------------

%Soru : 178 (i)

b=[0.25 -(sqrt(3)/2) 1];
a=[1 -(sqrt(3)/2) 0.25];
la=length(a);
lb=length(b);

zs=roots(b);
ps=roots(a);

disp('Soru : 178 (i) için');
disp('Sýfýrlar:');
disp(zs);
disp('Kutuplar:');
disp(ps);

figure (2);

if (la>lb),
  b=[b zeros(1,la-lb)];
elseif (lb>la),
  a=[a zeros(1,lb-la)];
end
ps = roots(a);
zs = roots(b);
mx = max( abs([ps' zs' .95]) ) + .05;
clf;
axis([-mx mx -mx mx]);
axis('equal');
hold on
w = [0:.01:2*pi];
plot(cos(w),sin(w),'.');
plot([-mx mx],[0 0]);
plot([0 0],[-mx mx]);
text(0.1,1.1,'Im','sc');
text(1.1,.1,'Re','sc');
plot(real(ps),imag(ps),'x');
plot(real(zs),imag(zs),'o');
numz=sum(abs(zs)==0);
nump=sum(abs(ps)==0);
if numz>1,
  text(-.1,-.1,num2str(numz));
elseif nump>1,
  text(-.1,-.1,num2str(nump));
end
grid
title('Soru : 178 (i)');
hold off;
