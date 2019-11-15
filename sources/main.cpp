//
// Created by rooted on 15.11.2019.
//

#include "../include/Json.h"


int main(){

    std::string json = "{"
                       "\"lastname\":\"Ivanov\","
                       "\"firstname\":\"Ivan\","
                       "\"age\":25,"
                       "\"islegal\":false,"
                       "\"marks\":["
                       "4,5,5,5,2,3"
                       "],"
                       "\"address\":{"
                       "\"city\":\"Moscow\","
                       "\"street\":\"Vozdvijenka\""
                       "}"
                       "}";
    Json object = Json::parse(json);

    auto a = object["lastname"];
    auto b = std::any_cast<std::string>(object["lastname"]);

    std::cout << b << std::endl;

}