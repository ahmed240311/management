import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

// const chatName = 'massages';
void loginSnack(){
  Get.snackbar(
      '            '
          ' يجب ملئ البيانات بطريقة صحيحة',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}