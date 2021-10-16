function [Visited_Frontier] = D_BFS(ary,num,map)
    if (ary(num).d ~=0)
        if map(ary(num).d) ~=3
            Visited_Frontier = ary(num).d;
        else
            Visited_Frontier = 0;
        end
    else
        Visited_Frontier = 0;
    end
end