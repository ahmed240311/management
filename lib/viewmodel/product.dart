import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:intl/intl.dart';
class products extends GetxController {
  void add({
    // required  id,
    required  forLocation,
    required  engName,
    required  jopName,
    required  ownerName,
    required  emaraNum,
    required  phone,
    required  houseNum,
    required image,
    required   note,
    required   tm,
    required   lmYaTem,
    required   date,

    // imageUrl,
  }) {
    http.post('https://management-25dfd-default-rtdb.firebaseio.com/product.json',
        body: json.encode({
          // "id": id,
          "forLocation": forLocation,
          "engName": engName,
          "jopName": jopName,
          "ownerName": ownerName,
          "phone": phone,
          "houseNum": houseNum,
          "emaraNum": emaraNum,
          "image" :image,
          "note": note,
          "tm":tm,
          "lmYaTem":lmYaTem,
          "date":date,

        }));
    // productList.add(products(
    //
    // ))
  }
  

}
