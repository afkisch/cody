% Problem 52. What is the next step in Conway's Life?
function B = gameOfLife(A)
    dir = {[-1 -1] [-1 0] [-1 1] [0 1] [1 1] [1 0] [1 -1] [0 -1]};
    B = zeros(6);
    
    for i = 1:4
        for j = 1:4
            B(i+1, j+1) = A(i, j);
        end
    end
    
    A = B;
    
    A(1,2:end-1) = A(end-1,2:end-1);
    A(end,2:end-1) = A(2,2:end-1);
    
    A(2:end-1,1) = A(2:end-1,end-1);
    A(2:end-1,end) = A(2:end-1,2);
    
    A(1,1) = A(end-1,end-1);
    A(end,1) = A(2,end-1);
    A(1,end) = A(end-1,2);
    A(end,end) = A(2,2);
    
    for i = 2:5
        for j = 2:5
            count = 0;
            for k = 1:8
                if i+dir{k}(1)>0 && i+dir{k}(1)<7 && j+dir{k}(2)>0 && j+dir{k}(2)<7 && A(i+dir{k}(1), j+dir{k}(2))
                    count = count+1;
                end
            end
            if A(i, j) && (count~=2 && count~=3)
                B(i, j) = 0;
            elseif ~A(i, j) && count==3
                B(i, j) = 1;
            end
        end
    end
    B = B(2:end-1, 2:end-1)
end
