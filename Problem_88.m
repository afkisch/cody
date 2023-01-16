% Problem 88. It dseon't mettar waht oedrr the lrettes in a wrod are
% Reverse the inner letters of the words in a sentence by leaving the first and last letter in place
function sOut = scrambleText(sIn)
    temp1 = regexprep(sIn, '\.', '');
    temp1 = split(temp1);
    temp2 = temp1;
    for  i = 1:numel(temp1)
        temp2{i} = regexprep(temp2{i}, temp2{i}(2:end-1), reverse(temp2{i}(2:end-1)));
    end
    for i = 1:numel(temp1)
        sIn = regexprep(sIn, temp1{i}, temp2{i});
    end
    sOut = sIn
end
