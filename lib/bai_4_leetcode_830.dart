// https://leetcode.com/problems/divisor-game/
import 'dart:math';

void main() {
  print(divisorGame(8));
}
// assuming both players play optimally?
//n chẵn => đi trước chọn luôn chọn 1 là thắng
//n lẻ => đi trước luôn thua
// vì ước của lẻ luôn là lẻ
//lẻ - lẻ = chẵn
//=> đảo ngược trường hợp trước
// /*if((n%x == 0)) => true;
// else => false;*/ ????
bool divisorGame(int n) {
  bool isAlice = true;
  int x = 1;
  if (n == 1) return false;
  if (n == 2) return true;
  while ((n - x) > 0) {
    List<int> listX = [];
    //tìm x: 1->n; n%x == 0
    for (int i = 1; i < n; i++) {
      if (n % i == 0) {
        listX.add(i);
      }
    }
    //lấy x random từ listX
    final random = Random();
    if (listX.isNotEmpty) {
      x = listX[random.nextInt(listX.length)];
      //nếu vẫn tìm được x thì trò chơi tiếp tục
      isAlice = !isAlice;
      n = n - x;
    }
  }
  if (isAlice) {
    return false;
  } else {
    return true;
  }
}
