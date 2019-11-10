// Copyright 2018 Your Name <your_email>

#include <header.hpp>
#include "Json.h"

Json::Json(const std::string& s) {
    if (s[0] == '{'){
        isArray = false;
        auto regexPattern = R"~(\"\w+\":\[.*?\]|\"\w+\":\{.*?\}|\"\w+\":true|\"\w+\":false|\"\w+\":null|\"\w+\":\"\w+\"|\"\w+\":\d+)~";
        try {
            auto regexObject = std::regex(regexPattern);

            auto copy = std::string(s);

            std::smatch mySmatch;

            if (std::regex_search(s, mySmatch, regexObject)) {
                std::regex_token_iterator<std::string::iterator> rend;
                std::regex_token_iterator<std::string::iterator> a(
                        copy.begin(), copy.end(), regexObject);
                holder = std::map<std::string, std::any>();
                while (a != rend) addToHolder(*a++);
            }

        } catch (const std::regex_error& e) {
            std::cerr << "Error in regex \"" << regexPattern << "\"\nis: " << e.what()
                      << std::endl;
        }
    }
    else {
        isArray = true;
        auto regexPattern = R"~(\"\w+\"|true|false|null|\d)~";
        try {
            auto regexObject = std::regex(regexPattern);

            auto copy = std::string(s);

            std::smatch mySmatch;

            if (std::regex_search(s, mySmatch, regexObject)) {
                std::regex_token_iterator<std::string::iterator> rend;
                std::regex_token_iterator<std::string::iterator> a(
                        copy.begin(), copy.end(), regexObject);
                holder = std::map<std::string, std::any>();
                auto counter = 0;
                while (a != rend) addArrayToHolder(*a++, counter++);
            }

        } catch (const std::regex_error& e) {
            std::cerr << "Error in regex \"" << regexPattern
            << "\" \nis: " << e.what() << std::endl;
        }
    }
}

void Json::addToHolder(const std::string& s) {
    std::size_t offset = 0;
    while (s[offset] == ' ') offset++;
    auto substring = s.substr(offset);
    auto key = substring.substr(0, s.find_first_of(':'));
    offset = key.length() - 1;
    while (key[key.length() - 1] == ' ') offset--;
    key = key.substr(0, offset);
    auto value = substring.substr(s.find_first_of(':'));
    offset = 0;
    while (s[offset] == ' ') offset++;
    value = value.substr(offset);
    offset = value.length() - 1;
    while (value[offset] == ' ') offset--;
    if (value[0] == '"') {
        holder.insert(holderPair(key, value));
    } else if (value == "true") {
        holder.insert(holderPair(key, true));
    } else if (value == "false") {
        holder.insert(holderPair(key, false));
    } else if (isdigit(value[0])) {
        holder.insert(holderPair(key, std::stod(value)));
    } else {
        holder.insert(holderPair(key, Json(value)));
    }
}

void Json::addArrayToHolder(const std::string& value, const int& a) {
    auto key = std::to_string(a);
    if (value[0] == '"') {
        holder.insert(holderPair(key, value));
    } else if (value == "true") {
        holder.insert(holderPair(key, true));
    } else if (value == "false") {
        holder.insert(holderPair(key, false));
    } else if (isdigit(value[0])) {
        holder.insert(holderPair(key, std::stod(value)));
    } else {
        holder.insert(holderPair(key, Json(value)));
    }
}

bool Json::is_array() const { return isArray; }

bool Json::is_object() const { return !isArray; }

std::any& Json::operator[](const std::string& key) {
    if (!isArray) {
        return holder[key];
    } else {
        throw std::logic_error(R"~(Arrays cannot be accessed by keys, only indeces! Use Json::operator[](int index) instead.)~");
    }
}

std::any& Json::operator[](int index) {
    if (isArray) {
        return holder[std::to_string(index)];
    } else {
        throw std::logic_error(R"~(Objects cannot be accessed by indeces, only keys! Use Json::operator[](const std::string& key) instead.)~");
    }
}

Json Json::parse(const std::string& s) { return Json(s); }

Json Json::parseFile(const std::string& path_to_file) {
    std::experimental::filesystem::path path(path_to_file);
    std::ifstream f(path);
    const auto size = std::experimental::filesystem::file_size(path);
    std::string data(size, ' ');
    f.read(data.data(), size);
    return Json(data);
}
