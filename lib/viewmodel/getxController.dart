import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DataControl extends GetxController {
  DateTime selectedDateTime = DateTime.now();
  File? image;
  final picker = ImagePicker();

  @override
  void onInit() {
    // subscribeToAdmin();
    // getDeviceToken();
    //  cofigureCallBack();
  }

  @override
  void onClose() {}

  @override
  void onReady() {}

  Future pickImage() async {
    //pick image   use ImageSource.camera for accessing camera.
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 270.0,
        maxWidth: 270.0);

    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      // print('No image selected.');
    }
    update();
  }
  Future uploadPic(File _image1) async {
    try {
      FirebaseStorage storage = FirebaseStorage.instance;
      String fileName = basename(_image1.path);

      Reference ref = storage.ref().child(fileName);
      UploadTask uploadTask = ref.putFile(_image1);
      TaskSnapshot taskSnapshot = await uploadTask;

      final String url = (await taskSnapshot.ref.getDownloadURL());

      /* await uploadTask.whenComplete(() {

      url =  ref.getDownloadURL();
    }).catchError((onError) {
      print(onError);
    });*/
      update();
      // print("url : $url");
      return url;
    } catch (e) {
      print(e);
    }
  }

  void setSelectedDate(DateTime value) {
    selectedDateTime = value;
  }

}