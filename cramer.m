function x = cramer(A,b)
% Description: Solves Ax = b using the Cramer rule
% Input: 
%  - A: the coefficient matrix
%  - b: the right-hand side values
% Output: 
%  - x: the solution vector
% Author: Markos Tsipouras

	p = det(A); 
	x = zeros(size(b));
	for j = 1:size(b)
		x(j) = det([A(:,1:j-1) b A(:,j+1:end)]) / p;
    end
    
end