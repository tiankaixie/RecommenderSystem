reserves = [ 297, 267, 179, 143, 138, 104 ];
names = [ cellstr('Venezuela (297)'),
cellstr('Saudi Arabia (267)'),
cellstr('Canada (179)'),
cellstr('Iraq (153)'),
cellstr('Iran (138)'),
cellstr('Kuwait (104)') ];
pie(reserves, names, [1 0 0 0 0 0]);
title('Pie Chart of Six Larges Oil Nations');
xlabel('Billions of Barrels of Oil');