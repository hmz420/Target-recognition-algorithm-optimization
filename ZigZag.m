function [output_vector] = ZigZag(input)
% Calculate feature X (index of the DCT coefficient with 2nd greatest energy)
output_vector=ones(1,64);
key=1;
for k=1:15
    if mod(k,2)==1
        if k<9
            i=k;j=1;
            output_vector(key) = input(i,j);
            key = key+1;
            while(i>1)
                i = i-1; j = j+1;
                output_vector(key) = input(i,j);
                key = key+1;
            end
        else
            i=8;j=k-7;
            output_vector(key) = input(i,j);
            key = key+1;
            while(j<8)
                i = i-1; j = j+1;
                output_vector(key) = input(i,j);
                key = key+1;
            end
        end
    else
        if k<9
            i=1;j=k;
            output_vector(key) = input(i,j);
            key = key+1;
            while(j>1)
                i = i+1; j = j-1;
                output_vector(key) = input(i,j);
                key = key+1;
            end
        else
            i=k-7;j=8;
            output_vector(key) = input(i,j);
            key = key+1;
            while(i<8)
                i = i+1; j = j-1;
                output_vector(key) = input(i,j);
                key = key+1;
            end
        end
    end
end
end
