import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavPro extends ChangeNotifier {
  List item=[];
  List get favoriteitem =>item;

  void favorites(String items){
    final favitem=item.contains(items);

    if(favitem){
      item.remove(items);
    }
    else{
      item.add(items);
    }
    notifyListeners();
  }

  bool icon_change(String items){
    final favicon= item.contains(items);
    return favicon;
  }
}