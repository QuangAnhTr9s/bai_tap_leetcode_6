// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/description/
void main() {
  String s = "abbaca";
  print(removeDuplicates(s));
}

String removeDuplicates(String s) {
  List<String> listString = s.split('');
  //tạo biến check trong s có 2 kí tự kề nhau và bằng nhau ko

  bool b = false;
  //xóa hai chữ cái liền kề và bằng nhau
  for (int i = 0; i < listString.length - 1; i++) {
    if (listString[i] == listString[i + 1]) {
      listString.removeAt(i);
      listString.removeAt(i);
      b = true;
    }
  }
  if(b){
    //gọi lại hàm removeDuplicates để xóa tiếp
    return removeDuplicates(listString.join());
  }
  //nếu không còn 2 kí tự kề nhau và bằng nhau thì b = false => return
  return listString.join();
}
