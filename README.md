# Задание 1
Реализовать парсер данных в формате JSON.

JSON-текст представляет собой в закодированном виде одну из двух структур:
- Объект - это неупорядоченное множество пар ```ключ:значение```, разделяемых запятыми. Всё множество заключается в фигурные скобки ```{}```. Ключом может быть только регистрозависимая строка. Значением может быть объект, массив, число, литералы (```true, false, null```) или строка;
- Массив - это упорядоченное множество значений. Массив заключается в квадратные скобки ```[]```, а значения разделяются запятыми.

Пример входных данных в формате JSON:
```json
{
    "lastname" : "Ivanov",
    "firstname" : "Ivan",
    "age" : 25,
    "islegal" : false,
    "marks" : [
    	4,5,5,5,2,3
    ],
    "address" : {
    	"city" : "Moscow",
        "street" : "Vozdvijenka"
    }
}
```
Более подробное описание формата можно найти по ссылке [json.org](http://json.org/).

Так как JSON может хранить данные произвольной структуры и произвольных типов (объект, массив, число, литералы или строка), то целесообразно будет применить для хранения этих данных тип ```std::any```.

За основу необходимо взять следующий интерфейс (файл ```include/json.hpp```):
```cpp
class Json {
public:
    // Конструктор из строки, содержащей Json-данные.
    Json(const std::string& s);
    
    // Метод возвращает true, если данный экземпляр содержит в себе JSON-массив. Иначе false.
    bool is_array() const;
   	// Метод возвращает true, если данный экземпляр содержит в себе JSON-объект. Иначе false.
    bool is_object() const;

    // Метод возвращает значение по ключу key, если экземпляр является JSON-объектом.
    // Значение может иметь один из следующих типов: Json, std::string, double, bool или быть пустым.
    // Если экземпляр является JSON-массивом, генерируется исключение.
    std::any& operator[](const std::string& key);
    
    // Метод возвращает значение по индексу index, если экземпляр является JSON-массивом.
    // Значение может иметь один из следующих типов: Json, std::string, double, bool или быть пустым.
    // Если экземпляр является JSON-объектом, генерируется исключение.
    std::any& operator[](int index);
    
    // Метод возвращает объект класса Json из строки, содержащей Json-данные.
    static Json parse(const std::string& s);
    
    // Метод возвращает объекта класса Json из файла, содержащего Json-данные в текстовом формате.
    static Json parseFile(const std::string& path_to_file);
};
```
Таким образом объект класса ```Json``` может являться либо Json-объектом, либо Json-массивом и может хранить в себе вложенные объекты класса ```Json```.

Класс ```Json``` должен проходить unit-тесты из файла ```tests/test.cpp``` на json-данных, приведённых выше:

```cpp
std::string json = <json-строка из примера выше>;

Json object = Json::parse(json);
EXPECT_EQ(std::any_cast<std::string>(object["lastname"]), "Ivanov");
EXPECT_EQ(std::any_cast<bool>(object["islegal"]), false);
EXPECT_EQ(std::any_cast<int>(object["age"]), 25);

auto marks = std::any_cast<Json>(object["marks"]);
EXPECT_EQ(std::any_cast<int>(marks[0]), 4);
EXPECT_EQ(std::any_cast<int>(marks[1]), 5);

auto address = std::any_cast<Json>(object["address"]);
EXPECT_EQ(std::any_cast<std::string>(address["city"]), "Moscow");
EXPECT_EQ(std::any_cast<std::string>(address["street"]), "Vozdvijenka");
```

# Задание 2
Полученный в первом задании парсер необходимо обернуть в статическую библиотеку и продемонстрировать её использование в клиентском приложении.

В скрипте CMake создание статической библиотеки может быть выполнено командной:
```cmake
add_library(my_library STATIC sources/my_source.cpp)
```
Таким образом, создание библиотеки и её подключение к клиентскому приложение может быть выполнено следующим образом:
```cmake
add_library(json STATIC sources/json.cpp)
add_executable(main sources/main.cpp)
target_link_libraries(main json)
```
# Задание 3
На вход программы поступает информация о биржевых инструментах (массив тикеров, массив идентификаторов и массив описаний) в формате JSON вида:
```json
[
    ["Si-9.15", "RTS-9.15", "GAZP-9.15"],
    [100024, 100027, 100050],
    ["Futures contract for USD/RUB", "Futures contract for index RTS", "Futures contract for Gazprom shares"]
]
```
Необходимо выполнить преобразование данных в более удобный для анализа формат:
```json
[
    {"ticker":"Si-9.15", "id": 100024, "description": "Futures contract for USD/RUB"},
    {"ticker":"RTS-9.15", "id": 100027, "description": "Futures contract for index RTS"},
    {"ticker":"GAZP-9.15", "id": 100050, "description": "Futures contract for GAZPROM shares"}
]
```

Для этого требуется использовать любую популярную библиотеку для работы с форматом данных JSON на C++ (например [JSON for Modern C++](https://docs.hunter.sh/en/latest/packages/pkg/nlohmann_json.html)).
