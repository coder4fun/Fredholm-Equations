

hTable = uitable();
    % Display in table.
columnHeaders = {'t', 'Approximate value for k=16', 'Approximate value for k =32','Exact solution'};
for n=1:10
	t = (n-1)/10;
        % Defining the intervel.
    tableData(n,1) = t;
	tableData(n,2) = approximate_solution(16,t);
	tableData(n,3) = approximate_solution(32,t);
    tableData(n,4) = exact_solution2(t);
        % Filling the data in the table.
end
    tableData(11,1) = 1;
    tableData(11,2) = approximate_solution(16,0.99999);
    tableData(11,3) = approximate_solution(32,0.99999);
    tableData(11,4) = exact_solution2(1);

set(hTable, 'ColumnName', columnHeaders);
        % Setting the column headers.
set(hTable, 'data', tableData);
        % Setting the data.
