// https://leetcode.com/problems/add-to-array-form-of-integer/
void main() {
  print(addToArrayForm([1, 2, 0, 0], 34));
}

List<int> addToArrayForm(List<int> num, int k) {

  //listNum2 = 0...k có chiều dài = chều dài của num
  List<int> listNum2 = k.toString().split('').map((e) => int.parse(e)).toList();
  if (num.length < listNum2.length) {
    int length = listNum2.length - num.length - 1;
    for (int i = 0; i <= length; i++) {
      num.insert(0, 0);
    }
  } else if (num.length > listNum2.length) {
    int length = num.length - listNum2.length - 1;
    for (int i = 0; i <= length; i++) {
      listNum2.insert(0, 0);
    }
  }
  //cộng k vào số tạo thành từ num
  int count = 0;
  List<int> listResult = [];
  for (int i = num.length - 1; i >= 0; i--) {
    int a = num[i] + listNum2[i];
    if (a > 9) {
      listResult.add((a % 10 + count));
      count = 1;
    } else {
      if ((a + count) > 9) {
        listResult.add((a+ count)%10);
        count = 1;
      } else {
        listResult.add((a + count));
        count = 0;
      }
    }
  }
  if (count == 1) {
    listResult.add(1);
  }
  return listResult.reversed.toList();
}
