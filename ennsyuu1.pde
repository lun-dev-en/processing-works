// 四角形を扱うクラス
class MyRect {
  int x;//四角形の位置の x 座標を扱うフィールド x を宣言(整数型)
  int y;//四角形の位置の y 座標を扱うフィールド y を宣言(整数型)
  int width;//四角形の幅を扱うフィールド width を宣言(整数型)
  int height;//四角形の高さを扱うフィールド height を宣言(整数型)

  // コンストラクタ
  MyRect(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;// x に tempX を代入する
    y = tempY;// y に tempY を代入する
    width = tempW;// width に tempW を代入する
    height = tempH;// height に tempH を代入する
  }

  // 線の太さを指定できる四角形描画メソッド
  void drawShape(int weight) {
    strokeWeight(weight);  // 線の太さを設定
    rect(x, y, width, height);
  }
}

// MyRect型の変数を宣言
MyRect rect1;
MyRect rect2;
MyRect rect3;

void setup() {
  size(240, 120);         // ウィンドウサイズ設定
  rectMode(CENTER);       // 四角形の描画モードをCENTERに設定

  // 四角形オブジェクトを生成
  rect1 = new MyRect(20, 20, 40, 30);
  rect2 = new MyRect(30, 50, 20, 40);
  rect3 = new MyRect(200, 80, 50, 60);
}

void draw() {

  rect1.drawShape(2);     // 線の太さ2
  rect2.drawShape(4);     // 線の太さ4
  rect3.drawShape(6);     // 線の太さ6
}
