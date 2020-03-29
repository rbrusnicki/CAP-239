#include "include/conversion.h"

void Conversion::print_menu(){
    int aux;

    cout << "\n\n *** Menu ***\n";
    cout << "   1 - Adicionar/Alterar numero de entrada;\n";
    cout << "   2 - Adicionar/Alterar base da entrada;\n";
    cout << "   3 - Adicionar/Alterar base da saída;\n";
    cout << "   4 - Imprimir numero na base de saída;\n";  
    cout << "   5 - Imprimir conversão;\n";
    cout << "   6 - Sair;\n"; 
    cout << "Opção: ";
    cin >> aux;
    
    switch (aux)
    {
    case 1:
        int aux2;
        cout << "\n* Digite cada um dos algarismos, e tecle 'enter'. Quando finalizado, digite '-1' e tecle 'enter':\n";
        cin >> aux2;
        while(aux2 != -1)
        {
           Input.num.push_back(aux2);
           cin >> aux2;
        }
        break;
    
    case 2:
        cout << "* Digite o valor da base de origem:\n";
        cin >> Input.base;
        break;
    
    case 3:
        cout << "\n* Digite o valor da base de saida:\n";
        cin >> Output.base;
        break;
    
    case 4:
        cout << "nao implementado ainda\n";
        break;
    
    case 5:
        cout << "nao implementado ainda\n";
        break;
    
    case 6:
        cout << " Exiting the program." << endl;
        exit(0);
        break;
    }  

    print_menu();

    
    
}
