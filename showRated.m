function showRated(my_ratings,movieList)
	fprintf('\nNew user ratings:\n');
	for i = 1:length(my_ratings)
    	if my_ratings(i) > 0 
        	fprintf('Rated %d for %s\n', my_ratings(i), movieList{i});
    	end
	end
endfunction