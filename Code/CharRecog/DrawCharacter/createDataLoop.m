h = cell(10,1);
h_ft = cell(10,1);
for idx = 1:10
   data = DrawCharacter; 
   ft = ftEx6(data);
   h{idx,1} = data;
   h_ft{idx,1} = ft;
end