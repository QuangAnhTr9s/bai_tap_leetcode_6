// https://leetcode.com/problems/roman-to-integer/
void main() {
  String s = "MCMXCIV";
  print(romanToInt(s));
}

int romanToInt(String s) {
  String resultString = '';
  String result = '';
  // String result = '';
  Map<String, String> map = {
    "I": "0001",
    "IV": "0004",
    "V": "0005",
    "IX": "0009",
    "X": "0010",
    "XL": "0040",
    "L": "0050",
    "XC": "0090",
    "C": "0100",
    "CD": "0400",
    "D": "0500",
    "CM": "0900",
    "M": "1000",
  };
  Map<String, String> mapDacBiet = {
    "IV": "0004",
    "IX": "0009",
    "XL": "0040",
    "XC": "0090",
    "CD": "0400",
    "CM": "0900",
  };
  //check truong hop la 1 ki tu
  if (map.containsKey(s)) {
    return int.parse(map[s]!);
  } else {
    mapDacBiet.forEach((key, value) {
      if (s.contains(key)) {
        resultString = s.replaceAll(key, value);
        s = resultString;
      }
    });
    if (resultString == '') {
      resultString = s;
    }
    map.forEach((key, value) {
      if (s.contains(key)) {
        result = resultString.replaceAll(key, value);
        resultString = result;
      } else {}
    });
    if (result == '') {
      result = resultString;
    }
  }
  List<int> listResult = [];
  for (int i = 0; i < result.length; i = i + 4) {
    String a = result[i] + result[i + 1] + result[i + 2] + result[i + 3];
    listResult.add(int.parse(a));
  }
  int ketQua = 0;
  listResult.forEach((element) {
    ketQua = ketQua + element;
  });
  return ketQua;
}
