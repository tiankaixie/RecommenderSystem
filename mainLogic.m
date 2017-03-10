%% Recommander System
fprintf('Welcome to Movie Recommender System ver.1.0!\n');

fprintf('Initialization...\n');
fprintf('Loading movie ratings dataset...\n');
load ('ex8_movies.mat');
fprintf('Done.\n');

fprintf('For usage, please type \"help\"\n');

command = '';

%% Main while loop
movieList = loadMovieList();
my_ratings = zeros(size(movieList), 1);

while (true) 
	command = input('$ ','s');
	if strcmp(command,'matrixImg') == 1
		imagesc(Y),colorbar;
		ylabel('Movies');
		xlabel('Users');
	elseif strcmp(command,'search') == 1
		movieName = input('Please type the name of the movie:', 's');
		searchMovie(movieList, movieName, R, Y);
	elseif strcmp(command,'info') == 1
		movieId = input('Please type the Id of the movie:','s');
		movieId = str2num(movieId);
		listSize = size(movieList,1);
		if isnumeric(movieId)
			if (movieId > 0 && movieId <= listSize)
				info(movieList, movieId, Y);
			else
				fprintf('Ilegal input! For usage, please type \"help\"\n');
			end
		else
			fprintf('Ilegal input! For usage, please type \"help\"\n');
		end
	elseif strcmp(command,'rate') == 1
		movieId = input('Please type the Id of the movie:','s');
		movieId = str2num(movieId);
		listSize = size(movieList,1);
		if isnumeric(movieId)
			if (movieId > 0 && movieId <= listSize)
				my_ratings = rateMovie(my_ratings, movieList, movieId, R, Y);
			else
				fprintf('Ilegal input! For usage, please type \"help\"\n');
			end
		else
			fprintf('Ilegal input! For usage, please type \"help\"\n');
		end
	elseif strcmp(command,'rated') == 1
		showRated(my_ratings,movieList);
	elseif strcmp(command,'recommends') == 1
		recommends(my_ratings, R, Y);
	elseif strcmp(command,'help') == 1
		listDoc;
	elseif strcmp(command,'quit') == 1
		disp('Good Bye.');
		break;
	else
		fprintf('Ilegal input!\n');
	end
endwhile


