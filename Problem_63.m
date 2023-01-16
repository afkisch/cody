% Problem 63. Encode Roman Numerals
function romStr = dec2rom(n)
  rom = {'I' 'IV' 'V' 'IX' 'X' 'XL' 'L' 'XC' 'C' 'CD' 'D' 'CM' 'M'};
  dec = [1 4 5 9 10 40 50 90 100 400 500 900 1000];
  romStr = '';
  for i = numel(dec):-1:1
    while dec(i)<=n
        n = n-dec(i);
        romStr = append(romStr, rom{i});
    end
  end
end
