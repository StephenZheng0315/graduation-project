
function b = isBound(h,v,s,t)%s�ǲ���
    if length(h)<1/s
        b = false;
        return
    end
    b = h(end)>mean(h)+t*sqrt(var(h));%��׼��
end