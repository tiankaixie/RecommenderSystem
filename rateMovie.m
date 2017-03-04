function my_ratings = rateMovie(my_ratings, movieList, movieId, R, Y)
	fprintf('You are currently rating : %s\n',movieList{movieId});
	score = input('Please rate for this movie (1 - 5):','s'); 
	score = str2num(score);
	while score < 1 || score > 5
		fprintf('Invalid score (should be 1 - 5)\n');
		score = input('Please rate for this movie (1 - 5):','s'); 
		score = str2num(score);
	end
	my_ratings(movieId) = score;	
	fprintf('finished rating.\n');
endfunction