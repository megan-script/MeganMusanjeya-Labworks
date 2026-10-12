function positive_part
    global x y
    index = x >= 0;
    y(index) = sin(x(index));
end