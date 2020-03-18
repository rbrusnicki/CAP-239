%% Converte um numero inteiro positivo entre bases quaisquer, de forma direta ( sem ser por for�a bruta )
% INPUTS:
% num_In  : vetor que contem os algarismos do numero a ser convertido, escrito na base 10
% base_In : base utilizada para representar o input, escrita na base 10
% base_Out: base utilizada para representar o output, escrita na base 10
%
% OUTPUTS:
% num_Out: vetor que conter� os algarismos do numero j� convertido
%
% Author: 1st Lt Brusnicki
% Date: 11/03/2020
function [num] = base_Conversion_v3(num_In, base_In, base_Out)
    baseIn_Out = baseConversion_v2([1 0], base_In, base_Out);

    ii = length(num_In);

    num =  baseConversion_v2(num_In(1), base_In, base_Out);
    for i=2:ii
       aux1 = multiplicaX(num, baseIn_Out, base_Out);
       aux2 = baseConversion_v2(num_In(i), base_In, base_Out);
       num =  somaX(aux1, aux2, base_Out);
    end
    
end

%% Multiplica dois n�meros da mesma base, seja ela qualquer
function [num] = multiplicaX(num1, num2, baseX)
    num = 0;
    aux = 0;
    ii = length(num1);
    jj = length(num2);
  
    for i=1:ii
        for j=1:jj
            aux = num1(ii-i+1) * num2(jj-j+1);
            if aux >= baseX
                aux = baseConversion_v2(aux, 10, baseX);
            end
           
            for k = 1:i+j-2;
                aux = [aux 0];
            end
            
            num = somaX (num, aux, baseX);
        end
    end
end

%% Fun��o que soma dois numeros inteiros em uma base qualquer
function [num] = somaX(num1, num2, baseX)
    ii = length(num1);
    jj = length(num2);
    
    while ii < jj
        num1 = [0 num1];
        ii = ii+1;
    end
    
    while jj < ii
        num2 = [0 num2];
        jj = jj+1;
    end
    
    num = zeros(1,ii);
    
    for i = 1:ii
        num(i) = num1(i)+num2(i);
    end
       
    for i = ii:-1:1
       if num(i) >= baseX
           resto = mod(num(i),baseX);
           quociente = (num(i) - resto)/baseX;
           num(i) = resto;
           if i ~= 1
                num(i-1) = num(i-1) + quociente;
           else
               num = [quociente, num];
           end
       end
    end
end
