#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <optional>
#include <vector>
enum class TokenType {
    _return, int_lit, semi, tof
};

struct Token {
    TokenType type;
    std::optional<std::string> value;
};

std::vector<Token> tokenize(const std::string& str){
    std::vector<Token> tokens;

    for(size_t i=0; i<str.length(); i++){
        char c = str.at(i);
        
    }
}

int main(int argc, char const *argv[])
{
    std::string contents; 
    {
        std::stringstream ss;
        std::fstream input(argv[1], std::ios::in);
        ss << input.rdbuf();
        contents = ss.str();    
    }
    std::cout << contents << std::endl;
    
    return EXIT_SUCCESS;
}
