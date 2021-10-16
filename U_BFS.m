function [Visited_Frontier] = U_BFS(ary,num,map,node)
    %if (ary(num).u ==0)
    [i,j] = ind2sub(size(map),node);
    disp(node);
    if node~=1 && node~=11 && node~=21 && node~=31 && node~=41
        if (ary(num).u ~=0)
            if map(ary(num).u) ~=3
                Visited_Frontier = ary(num).u;
            else
                Visited_Frontier = 0;
            end
        elseif ary(num).u ==0
            j = node-1;
            disp("j");
            disp(i);
            while map(j)==2 || map(j)==3
                disp("j-");
                disp(j);
                [i,k] = ind2sub(size(map),j);
                disp(i);
                j = j - 1;
            end
            Visited_Frontier = j;
        else
            Visited_Frontier = 0;
        end
    else
        Visited_Frontier = 0;
    end
end