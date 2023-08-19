import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;
  double _totalPrice = 0.0;

  double get totalPrice => _totalPrice;

  void _setPrefItems() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('cart_item', _counter);
    sp.setDouble('total_price', _totalPrice);

    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _counter = sp.getInt('cart_item') ?? 0;
    _totalPrice = sp.getDouble('total_price') ?? 0;

    notifyListeners();
  }

  void addCounter() {
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removeCounter() {
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItems();
    return _counter--;


  }


  void addTotalPrice( double productPrice) {
    _totalPrice=_totalPrice+productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
   _totalPrice=_totalPrice -productPrice;
    _setPrefItems();
    notifyListeners();
  }

  double  getTotalPrice() {
    _getPrefItems();
    return _totalPrice;


  }




}
