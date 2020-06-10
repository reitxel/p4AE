function plotc_testfunction(coord) 
clf
clear d
hold on
    for x=1:10
        for y=1:10
            d(x,y)=testfunction([x,y]) 
        end
    end
contourf(d)
plot (coord(:,1), coord(:,2), 'o','MarkerFaceColor', [1 1 1], 'LineWidth', 2, 'MarkerSize',8)
hold off
end

