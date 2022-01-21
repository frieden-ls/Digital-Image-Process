function [Irgb] = bayer2g(Ibayer)
h = size(Ibayer,1)-2;
w = size(Ibayer,2)-2;
Irgb = zeros(h,w);

for i = 3:2:h
    for j = 3:2:w
         if(abs(Ibayer(i,j+2)-Ibayer(i,j-2)) < abs(Ibayer(i+2,j)-Ibayer(i-2,j)))
            Irgb(i,j) = (Ibayer(i+1,j)+Ibayer(i,j+1))/2;
        elseif(abs(Ibayer(i,j+2)-Ibayer(i,j-2)) > abs(Ibayer(i+2,j)-Ibayer(i-2,j)))
             Irgb(i,j) = (Ibayer(i-1,j)+Ibayer(i,j-1))/2;
        else
            Irgb(i,j) = (Ibayer(i,j+1)+Ibayer(i-1,j)+Ibayer(i,j-1)+Ibayer(i-1,j+1))/4;
         end
    end
end
for i = 4:2:h
     for j = 4:2:w
          if(abs(Ibayer(i,j+2)-Ibayer(i,j-2)) < abs(Ibayer(i+2,j)-Ibayer(i-2,j)))
            Irgb(i,j) = (Ibayer(i+1,j)+Ibayer(i,j+1))/2;
        elseif(abs(Ibayer(i,j+2)-Ibayer(i,j-2)) > abs(Ibayer(i+2,j)-Ibayer(i-2,j)))
             Irgb(i,j) = (Ibayer(i-1,j)+Ibayer(i,j-1))/2;
        else
            Irgb(i,j) = (Ibayer(i,j+1)+Ibayer(i-1,j)+Ibayer(i,j-1)+Ibayer(i-1,j+1))/4;
          end
     end
end
 for i = 3:2:h
     for j = 2:2:w
         Irgb(i,j) = Ibayer(i,j);
     end
 end
 for i = 2:2:h
     for j = 3:2:w
         Irgb(i,j) = Ibayer(i,j);
     end
 end
end
 
         