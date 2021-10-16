function [Visited_Frontier] = L_BFS(ary,num,map,node)
    %if (ary(num).l ==0)
    [i,j] = ind2sub(size(map),node);
    disp("L");
    disp(node);
    if node>11
        if (ary(num).l ~=0)
            if map(ary(num).l) ~=3
                Visited_Frontier = ary(num).l;
            else
                Visited_Frontier = 0;
            end
        elseif ary(num).l ==0
            j = node-10;
            disp("j");
            disp(i);
            while map(j)==2 || map(j)==3
                disp("j-");
                disp(j);
                [i,k] = ind2sub(size(map),j);
                disp(i);
                j = j - 10;
            end
            Visited_Frontier = j;
        else
            Visited_Frontier = 0;
        end
    else
        Visited_Frontier = 0;
    end
end