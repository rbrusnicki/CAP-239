%% Converte um numero inteiro positivo entre bases quaisquer, por força bruta
% INPUTS:
% num_In  : vetor que contem os algarismos do numero a ser convertido, escrito na base 10
% base_In : base utilizada para representar o input, escrita na base 10
% base_Out: base utilizada para representar o output, escrita na base 10
%
% OUTPUTS:
% num_Out: vetor que conterá os algarismos do numero já convertido
%
% Author: 1st Lt Brusnicki
% Date: 11/03/2020
function [num_Out] = baseConversion_v2(num_In, base_In, base_Out)
    num_Out = 0;
   
    while( sum(num_In) ~= 0 )
        num_Out = mais_1_na_baseX(num_Out, base_Out);
        num_In = menos_1_na_baseX(num_In, base_In);
    end

end

%% Soma 1 em uma base qualquer
function [num] = mais_1_na_baseX(num, baseX)
    L = length(num);
    if num(L) ~= baseX-1
        num(L) = num(L)+1;
    else
        if( L > 1 )
            num = [mais_1_na_baseX(num(1:L-1), baseX), 0];
        else
            num = [1 0];
        end
    end
end

%% Subtrai 1 em uma base qualquer
function [num] = menos_1_na_baseX(num, baseX)
    L = length(num);
    if num(L) ~= 0
        num(L) = num(L)-1;
    else
        if( L > 1 )
            num = [menos_1_na_baseX(num(1:L-1), baseX), baseX-1];
        end
    end
end
