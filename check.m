function [Visited_Frontier] = check(ary,n,map,f)
    Visited_Frontier = 0;
    if f == 1
        while n && Visited_Frontier ==0
            [Visited_Frontier] = D_BFS(ary,n,map);
            n = n-1;
        end
    elseif f == 2
        while n && Visited_Frontier ==0
            [Visited_Frontier] = U_BFS(ary,n,map);
            n = n-1;
        end
    elseif f == 3
        while n && Visited_Frontier ==0
            [Visited_Frontier] = R_BFS(ary,n,map);
            n = n-1;
        end
    elseif f == 4
        while n && Visited_Frontier ==0
            [Visited_Frontier] = L_BFS(ary,n,map);
            n = n-1;
        end
    end
end