function [Visited_Frontier] = R_BFS(ary,num,map,node)
    %if (ary(num).u ==0)
    [i,j] = ind2sub(size(map),node);
    disp("R");
    disp(node);
    if node>=41
        node = node -39;
    end
    if (ary(num).r ~=0)
        if map(ary(num).r) ~=3
            Visited_Frontier = ary(num).r;
        else
            Visited_Frontier = 0;
        end
    elseif ary(num).r ==0
        if node > 40
            node = node -39;
            j = node;
        else
            j = node+10;
        end
        disp("j");
        disp(j);
        while map(j)==2 || map(j)==3
            disp("j-");
            disp(j);
            [i,k] = ind2sub(size(map),j);
            if j > 40
                j = j -39;
            else
                j = j +10;
            end
        end
        Visited_Frontier = j;
    else
        Visited_Frontier = 0;
    end
end