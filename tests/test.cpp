// Copyright 2018 Your Name <your_email>

#include <gtest/gtest.h>
#include <nlohmann/json.hpp>
#include <sstream>

using json = nlohmann::json;

TEST(Example, EmptyTest) {
  std::stringstream ss;
  auto j = R"(
{
	"data":
	[
		["Si-9.15", "RTS-9.15", "GAZP-9.15"],
		[100024, 100027, 100050],
		["Futures contract for USD/RUB", "Futures contract for index RTS", "Futures contract for Gazprom shares"]
	]
})"_json;

  json j2;
  j2["data"] = {{"ticker", j["data"][0][0], "id", j["data"][1][0],
                 "description", j["data"][2][0]},
                {"ticker", j["data"][0][1], "id", j["data"][1][1],
                 "description", j["data"][2][1]},
                {"ticker", j["data"][0][1], "id", j["data"][1][1],
                 "description", j["data"][2][1]}};
  ss << j2;
  EXPECT_EQ(
      ss.str(),
      R"~({data:[{"ticker":"Si-9.15","id": 100024,"description":"Futures contract for USD/RUB"},{"ticker":"RTS-9.15","id":100027,"description":"Futures contract for index RTS"},{"ticker":"GAZP-9.15","id": 100050,"description":"Futures contract for GAZPROM shares"}]})~");
}
