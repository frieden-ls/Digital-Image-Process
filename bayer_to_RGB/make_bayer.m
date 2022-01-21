function [Ibayer] = make_bayer(Irgb,F)  % 根据输入的Bayer格式选择相应的函数  

if strcmp(F,'bggr')    
    Ibayer = BGGR(Irgb);
elseif strcmp(F,'gbrg') 
    Ibayer = GBRG(Irgb);
elseif strcmp(F,'grbg')
    Ibayer =GRBG(Irgb);
else strcmp(F,'rggb')
    Ibayer = RGGB(Irgb);

end
