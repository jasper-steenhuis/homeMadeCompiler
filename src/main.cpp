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
    std::string stringBuffer;
    for(size_t i=0; i<str.length(); i++){
        char c = str.at(i);
        if(std::isalpha(c)){
            stringBuffer.push_back(c);
            i++;
            while (std::isalnum(c)){
                stringBuffer.push_back(c);
                i++;
            }
            i--;
            if(stringBuffer == "return"){
                tokens.push_back({.type=TokenType::_return});
                stringBuffer.clear();
                continue;
            }
            if(stringBuffer == "tof"){
                tokens.push_back({.type=TokenType::tof});
                stringBuffer.clear();
                continue;
            }
        }
        else if(std::isdigit(c)){
            stringBuffer.push_back(c);
            i++;
            while(std::isdigit(str.at(i))){
                stringBuffer.push_back(str.at(i));
                i++;
            }
            i--;
            tokens.push_back({.type = TokenType::int_lit, .value = stringBuffer});
            stringBuffer.clear();
            continue;
        }
        
        else if(std::isspace(c)){
            continue;
        }
        else if (c == ';'){
            tokens.push_back({.type = TokenType::semi});
            stringBuffer.clear();
            continue;
        }
        
        else {
            std::cerr << "unrecognizable code detected" << std::endl;
            exit(EXIT_FAILURE);
        }

        
    }
    return tokens;
}

std::string tokenToAsm(const std::vector<Token>& tokens){
    std::stringstream output;
    std::stringstream temp;
    output << "global _start\n_start:\n";
    for(size_t i=0; i<tokens.size(); i++){
        const Token& token = tokens.at(i);
        if(token.type == TokenType::int_lit){
            temp << token.value.value();
        }
        if(token.type == TokenType::semi){
            output << "     mov rax, 60\n";
            output << "     mov rdi, " <<  temp.str() << "\n";
            output << "     syscall";
        }
    }
    return output.str();
}

int main(int argc, char const *argv[])
{
    if(argc !=2){
        std::cerr << "incorrect usage" << std::endl;
        return EXIT_FAILURE;
    }
    std::string contents; 
    {
        std::stringstream ss;
        std::fstream input(argv[1], std::ios::in);
        ss << input.rdbuf();
        contents = ss.str();    
    }
    std::vector<Token> tokens = tokenize(contents);
    {
        std::fstream file("out.asm",std::ios::out);
        file << tokenToAsm(tokens);
        
    }
    system("nasm -felf64 out.asm");
    system("ld -o out out.o");
    
    return EXIT_SUCCESS;
}
