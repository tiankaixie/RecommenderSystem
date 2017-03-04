function searchMovie(movieList, name ,R, Y)
	res = regexp(movieList, name,'ignorecase');
	%[s, e, te, m, t, nm, sp]
	%disp(res);
	count = 0;
	fprintf('Searching movies with name \"%s\":\n\n', name);
	fprintf('%-6s%-10s%-60s\n','ID','Score','Name');
	for i =1 :size(movieList)
		if res{i,1} >= 1
			fprintf('%-6d%-10f%-50s\n',i,mean(Y(i, R(i, :))),movieList{i,1});
			count += 1;
		end
	end
	fprintf('\n');
	if count==0
		fprintf('No results match name like \"%s".\n',name);
	end
endfunction