// https://leetcode.com/problems/positions-of-large-groups/description/
void main() {
  print(largeGroupPositions("abbxxxxzzy"));
}

List<List<int>> largeGroupPositions(String s) {
  List<List<int>> listResult = [];
  int start = 0;
  int finish = 0;
  int index = 0;
  for (int i = 0; i < s.length - 1; i++) {
    String string = s[i];
    if (s[i] == s[i + 1]) {
      finish = i + 1;
      if (i == s.length - 2) {
        listResult.add([start, finish]);
      }
    } else {
      if (finish == start) {
        start = i + 1;
        finish = i + 1;
      } else {
        listResult.add([start, finish]);
        start = i + 1;
      }
    }
  }
  listResult.removeWhere((element) => (element.last - element.first) < 2);
  return listResult;
}
