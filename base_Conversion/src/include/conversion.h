#include <iostream>
#include <vector>
using namespace std;

class Numero
{
private:
protected:
public:
    Numero(){
        //Construtor
    }
    ~Numero(){
        //Destrutor
    }
    int base;
    vector<int> num;
};

class Conversion
{
    private:
    protected:
    public:
    Conversion(){
        //Construtor
    }
    ~Conversion(){
        //Destrutor
    }
    Numero Input;
    Numero Output;
    
    void print_menu();
};