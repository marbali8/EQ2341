function ft = ftEx6(data)
% input: data
% the output from DrawCharacter
%
% output: ft
% feature vector

% store only the coordinates that were drawn
vec = data(1:2,data(3,:)==1);

% shift the coordinates so they are centered
center = [0.5*(max(vec(1,:)) + min(vec(1,:)));0.5*(max(vec(2,:)) + min(vec(2,:)))];
vec = vec - center;

% normalize
xrange = max(vec(1,:)) - min(vec(1,:));
yrange = max(vec(2,:)) - min(vec(2,:));
vec = vec / max(xrange,yrange);

% quantize 2-D space (q x q)
q = 7;
x = vec(1,:);
y = vec(2,:);
% quantize x
x = floor( (x+1/q/2) / (1/q) );
x = x + ceil(q/2);
x(x>q) = q;
x(x<1) = 1;
% quantize y
y = floor( (y+1/q/2) / (1/q) );
y = y + ceil(q/2);
y(y>q) = q;
y(y<1) = 1;

% create feature vector
ft = (y-1)*q + x;

% get rid of consecutive duplicates
len = length(ft);
sample = true(1,len);
ref = ft(1);
for i = 2:len
    if ft(i) == ref
        sample(i) = false;
    else
        ref = ft(i);
    end
end
ft = ft(sample);
len = length(ft);

% adjust the length of the feature vector
% so that the output is always the same length
L = 30;

% if len < L
%     new_ft = zeros(1,L);
%     r = floor(L / len);
%     res = mod(L,len);
%     pt = 0;
%     for i = 1:res
%         for j = 1:(r+1)
%             pt = pt + 1;
%             new_ft(:,pt) = ft(:,i);
%         end
%     end
%     for i = (res+1):len
%         for j = 1:r
%             pt = pt + 1;
%             new_ft(:,pt) = ft(:,i);
%         end
%     end
%     ft = new_ft;
% end
% 
% if len > L
%     new_ft = zeros(1,L);
%     r = floor(len / L);
%     res = mod(len,L);
%     pt = 0;
%     for i = 1:res
%         new_ft(:,i) = ft(:,pt+floor((r+1)/2));
%         pt = pt + r + 1;
%     end
%     for i = (res+1):L
%         new_ft(:,i) = ft(:,pt+floor(r/2));
%         pt = pt + r;
%     end
%     ft = new_ft;
% end

end