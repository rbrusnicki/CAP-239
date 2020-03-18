%% Função que converte um numero inteiro positivo entre bases quaisquer, passando pela base 10
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
function [num_Out] = baseConversion(num_In, base_In, base_Out)
    n_alg = length(num_In);
    num_10 = 0;

    % converte o numero da base de entrada pra base 10
    for i = 1:n_alg
        num_10 = num_10 + num_In(n_alg - i + 1) * base_In ^ (i-1);
    end

    % converte o numero da base 10 para a base de saida
    num_Out = [];
    while num_10 ~=0
        aux = mod(num_10,base_Out);
        num_10 = (num_10 - aux)/base_Out;
        num_Out = [aux num_Out];
    end
end