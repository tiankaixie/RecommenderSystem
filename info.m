function info(movieList,movieId,Y)
	n_users = size(Y,2);
	score_counts = zeros(5,1);
	names = [cellstr('score 1'), cellstr('score 2'), cellstr('score 3'), cellstr('score 4'), cellstr('score 5')];
	for i = 1: 5
		labelName{i} = 'score ' + i;
		score_counts(i) = sum(Y(movieId, 1:n_users) == i);
	end
	total_counts = sum(score_counts,1);
	for i = 1: 5
		score_counts(i) = (score_counts(i)/total_counts) * 100 ;
	end
	for i = 1: 5
		fprintf('%4.1f%% \n', score_counts(i));
	end
	pie(score_counts);
	legend(names);
	title(movieList{movieId,1});
endfunction