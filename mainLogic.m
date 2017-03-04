%% Recommander System
fprintf('Welcome to Movie Recommender System ver.1.0!\n');

fprintf('Initialization...\n');
fprintf('Loading movie ratings dataset...\n');
load ('ex8_movies.mat');
fprintf('Done.\n');
fprintf('For usage, please type \"help\"\n');

command = '';

%% Main while loop

while (true) 
  command = input('$ ','s');
  if strcmp(command,'matrixImg')==1
  	imagesc(Y),colorbar;
  	ylabel('Movies');
  	xlabel('Users');
  elseif strcmp(command,'searchMovie')==1
  	movieName = input('Please type the name of the movie:', 's');
  	
  elseif strcmp(command,'help')==1
  	listDoc;
  elseif strcmp(command,'quit')==1
  	disp('Good Bye.');
  	break;
  end
endwhile


