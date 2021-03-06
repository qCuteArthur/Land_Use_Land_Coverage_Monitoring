function [roi]= roicircle(img);
figure;imshow(img,[]);
[y,x] = meshgrid(1:size(img,1),1:size(img,2));
p = ginput(1);
hold on; plot(p(1),p(2),'b*');
hold off;
p = [p; ginput(1)];
t_r = norm(p(2,:)-p(1,:));
[t,r] = cart2pol(y-p(1,1),x-p(1,2));
t(r>t_r) = nan;
roi = ~isnan(t);