function[Ibayer] = BGGR(Irgb)

Irgb = double(Irgb)/255;

Ibayer = zeros(size(Irgb,1),size(Irgb,2),3);

Ibayer(1:2:end,1:2:end,3) = Irgb(1:2:end,1:2:end,3); % copy blue(B)

Ibayer(1:2:end,2:2:end,2) = Irgb(1:2:end,2:2:end,2); % copy green(G)

Ibayer(2:2:end,1:2:end,2) = Irgb(2:2:end,1:2:end,2); % copy green(G)

Ibayer(2:2:end,2:2:end,1) = Irgb(2:2:end,2:2:end,1); % copy red(R)
return
end
