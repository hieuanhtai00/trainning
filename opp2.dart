class HinhChuNhat {
  HinhChuNhat({required this.chieuDai, required this.chieuRong});
  // Attributes
  double chieuDai, chieuRong;
  late double _chuVi = (chieuDai + chieuRong) * 2,
      _DienTich = (chieuDai * chieuRong);
  // Methods
  void TinhChuVi() {
    print('Chu Vi : ' + _chuVi.toString());
  }

  void TinhDienTich() {
    print('Dien Tich : ' + _DienTich.toString());
  }

  void GetInfor() {
    print('Chieu dai : ' + chieuDai.toString());
    print('Chieu rong : ' + chieuRong.toString());
    print('Chu vi : ' + _chuVi.toString());
    print('Dien tich : ' + _DienTich.toString());
  }
}

class Vuong extends HinhChuNhat {
  Vuong({required this.canh}) : super(chieuDai: canh, chieuRong: canh);
  double canh;
  @override
  void GetInfor() {
    print('Canh : ' + canh.toString());
    print('Chu vi : ' + _chuVi.toString());
    print('Dien tich : ' + _DienTich.toString());
  }
}

void main(List<String> args) {
  HinhChuNhat hcn1 = HinhChuNhat(chieuDai: 10, chieuRong: 20);
  HinhChuNhat hcn2 = HinhChuNhat(chieuDai: 15, chieuRong: 25);
  Vuong v = Vuong(canh: 15);
  hcn1.GetInfor();
  v.GetInfor();
}
