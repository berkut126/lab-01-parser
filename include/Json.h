//
// Created by rooted on 11.11.2019.
//

#ifndef TEMPLATE_JSON_H
#define TEMPLATE_JSON_H

class Json {
public:
    // Конструктор из строки, содержащей Json-данные.
    explicit Json(const std::string& s);

    // Метод возвращает true, если данный экземпляр содержит в себе JSON-массив.
    // Иначе false.
    [[nodiscard]] bool is_array() const;
    // Метод возвращает true, если данный экземпляр содержит в себе JSON-объект.
    // Иначе false.
    [[nodiscard]] bool is_object() const;

    // Метод возвращает значение по ключу key, если экземпляр является
    // JSON-объектом. Значение может иметь один из следующих типов: Json,
    // std::string, double, bool или быть пустым. Если экземпляр является
    // JSON-массивом, генерируется исключение.
    std::any& operator[](const std::string& key);

    // Метод возвращает значение по индексу index, если экземпляр является
    // JSON-массивом. Значение может иметь один из следующих типов: Json,
    // std::string, double, bool или быть пустым. Если экземпляр является
    // JSON-объектом, генерируется исключение.
    std::any& operator[](int index);

    // Метод возвращает объект класса Json из строки, содержащей Json-данные.
    static Json parse(const std::string& s);

    // Метод возвращает объекта класса Json из файла, содержащего Json-данные в
    // текстовом формате.
    static Json parseFile(const std::string& path_to_file);

private:
    holderMap holder;
    void addToHolder(const std::string& s);
    void addArrayToHolder(const std::string& s, const int& a);
    bool isArray;

};
#endif //TEMPLATE_JSON_H
