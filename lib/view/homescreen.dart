import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:management/model/customTextForm.dart';
import 'package:management/model/custombutton.dart';
import 'package:management/model/customtext.dart';
import 'package:management/screens/welcome_screen.dart';
import 'package:management/viewmodel/getxController.dart';
import 'package:management/viewmodel/product.dart';

class HomeView extends GetWidget<DataControl> {
  static String id = 'Home';

  final GlobalKey<FormState> _globlKey = GlobalKey<FormState>();
  late String forLocation, ownerName, engName,jopName;
  late int phone,  houseNum,emaraNum;
  late String note;
  var tm, lmYaTem;
  late String formattedDate;
  products product = products();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 28.0),
          child: CustomText(
            text: "إدارة  المشروعات",
            alignment: Alignment.topCenter,
            color: Colors.white,
            fontSize: 28.0,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
          key: _globlKey,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 23.0, left: 23.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.9,
                              height: MediaQuery.of(context).size.height / 14.2,
                              child: CustomTextFormField(
                                text: " ",
                                hint: "  اسم المشروع  ",
                                onSave: (value) {
                                  forLocation = value;
                                  // print(forLocation);
                                },
                                validator: (locationValue) {
                                  if (locationValue!.isEmpty)
                                    print("cityValue$locationValue");
                                },
                                type: TextInputType.text,
                              ),
                            ),
                          ),
                          CustomText(
                            text: "اسم المشروع ",
                            fontSize: 23.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: "   رقم الشقة  ",
                              onSave: (value) {
                                houseNum = int.parse(value, onError: (source) => 0);
                              },
                              // validator: (houseNumValue) {
                              //   if (houseNumValue!.isEmpty)
                              //     print("houseNum$houseNumValue");
                              // },
                              type: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "وصف المشروع",
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: "   رقم العمارة  ",
                              onSave: (value) {
                                emaraNum = int.parse(value, onError: (source) => 0);
                              },
                              // validator: (emaraNumValue) {
                              //   if (emaraNumValue!.isEmpty)
                              //     print("emaraNum$emaraNumValue");
                              // },
                              type: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "وصف المشروع",
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: " اسم العميل  ",
                              onSave: (owner) {
                                ownerName = owner;
                              },
                              validator: (ownerName) {
                                if (ownerName!.isEmpty)
                                  print("ownerName$ownerName");
                              },
                              type: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "اسم العميل",
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: "01",
                              onSave: (value) {
                                phone = int.parse(value, onError: (source) => 0);
                              },
                              validator: (phone) {
                                if (phone!.isEmpty) print("phone");
                                // notSuccsss();
                                // else
                                //   Succsss();
                              },
                              type: TextInputType.number,
                            ),
                          ),

                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width / 2.8,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "رقم الهاتف",
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      CustomText(
                        text: "ملاحظات",
                        fontSize: 17.0,
                        color: Colors.black54,
                        alignment: Alignment.center,
                      ),
                      CustomTextFormField(
                        text: " ملاحظات   ",
                        hint: "",
                        onSave: (value) {
                          note = value;
                        },
                        validator: (note) {
                          if (note!.isEmpty) print("notes");
                          // notSuccsss();
                          // else
                          //   Succsss();
                        },
                        type: TextInputType.text,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 58.7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 12.7,
                            child: CustomButton(
                              buttonText: 'تم التسليم ',
                              color: Colors.green,
                              onPress: () {
                                tm = "تم التسليم";
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 12.7,
                            child: CustomButton(
                              buttonText: "لم يتم التسليم ",
                              color: Colors.orange,
                              onPress: () {
                                lmYaTem = "لم يتم التسليم";
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8.5,
                        // width: MediaQuery.of(context).size.width / ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: GetBuilder<DataControl>(
                                builder: (_) {
                                  return controller.image == null
                                      ? Center(child: Text('لا يوجد صور.'))
                                      : Image.file(controller.image!);
                                },
                              ),
                            ),
                            InkWell(
                                onTap: () => controller.pickImage(),
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height / 8,
                                  width: MediaQuery.of(context).size.width / 6.0,
                                  child: Image.asset(
                                    'images/upload.png',
                                    fit: BoxFit.fitWidth,
                                    width: MediaQuery.of(context).size.width / 6,
                                    // width: MediaQuery.of(context).size.width / 18,
                                  ),
                                )),
                            /*  SizedBox(
                              height: 50.0,
                            ),*/
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 5.0,
                      // ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 15,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10.0,
                          child: CupertinoDateTextBox(
                              initialValue: controller.selectedDateTime,
                              onDateChange: (DateTime newValue) {
                                controller.setSelectedDate(newValue);
                                print("time :${controller.selectedDateTime}");
                                // controller.update();
                              },
                              hintText: DateFormat.yMd()
                                  .format(controller.selectedDateTime)),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: "  الاسم  ",
                              onSave: (owner) {
                                engName = owner;
                              },
                              validator: (ownerName) {
                                if (ownerName!.isEmpty)
                                  print("ownerName$ownerName");
                              },
                              type: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "الاسم ",
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.0,
                      ),  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 14.2,
                            child: CustomTextFormField(
                              text: " ",
                              hint: " المسمي الوظيفي   ",
                              onSave: (jop) {
                                jopName = jop;
                              },
                              validator: (jopName) {
                                if (jopName!.isEmpty)
                                  print("ownerName$jopName");
                              },
                              type: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "المسمي الوظيفي",
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      CustomButton(
                        color: Colors.blue,
                        buttonText: 'Send',
                        onPress: () {
                          // print('done');
                          _globlKey.currentState!.save();
                          if (_globlKey.currentState!.validate()) {
                            if (
                            // forLocation.isNotEmpty &&
                            //     forLocation != null &&
                                engName.isNotEmpty &&
                                // phone != null &&
                                // houseNum != null
                                // &&
                                note.isNotEmpty &&
                                note != null
                                    // &&
                                // (tm != null || lmYaTem != null)
                            )

                            {
                              formattedDate = DateFormat.yMd()
                                  .format(controller.selectedDateTime);
                              controller.uploadPic(controller.image!).then((value) {
                                product.add(
                                  // id: 2,
                                  forLocation: forLocation??'',
                                  engName: engName??'',
                                  jopName: jopName??'',
                                  ownerName: ownerName??'',
                                  phone: phone,
                                  houseNum: houseNum??200,
                                  emaraNum: emaraNum,
                                  image: value,
                                  note: note,
                                  // btnYellow: btnYellow == null ? "" : btnYellow,
                                  tm: tm == null ? "" : tm,
                                  lmYaTem: lmYaTem == null ? "" : lmYaTem,
                                  date: formattedDate != controller.selectedDateTime
                                      ? formattedDate.toString()
                                      : DateFormat.yMd()
                                          .format(controller.selectedDateTime),
                                );
                              });
                              Succsss();

                            }else
                              notSuccsss();
                            // print("not");
                          }
                        },
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    child: Icon(Icons.chat),
                    onPressed: () {
                      Get.offAll(() => WelcomeScreen());
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

void notSuccsss() {
  Get.snackbar(
      '                       '
          ' يجب ملئ جميع الحقول',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}

void Succsss() {
  Get.snackbar(
      '                    '
          '         '
          '  تم الارسال  ',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}
