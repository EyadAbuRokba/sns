import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swmc/utils/size_config.dart';

class ApplyTransctions extends StatefulWidget {
  const ApplyTransctions({Key? key}) : super(key: key);

  @override
  _ApplyTransctionsState createState() => _ApplyTransctionsState();
}

class _ApplyTransctionsState extends State<ApplyTransctions> {
  PickedFile? _pickedFile;

  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'تقديم طلب',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
                color: Colors.black),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/request');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top:SizeConfig.scaleHeight(32),
            start: SizeConfig.scaleWidth(10),
            end: SizeConfig.scaleWidth(10),
            bottom: SizeConfig.scaleHeight(22),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الرجاء قم بتعبئة الطلب :',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(30),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: new BorderRadius.circular(10),
                ),
                // width: 317,
                height: SizeConfig.scaleHeight(80),

                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: SizeConfig.scaleHeight(10),
                    start: SizeConfig.scaleWidth(12),
                    end: SizeConfig.scaleWidth(12),
                  ),
                  child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.category_outlined,color: Colors.grey,),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'القسم:',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'بلدية غزة',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.expand_more),
                  ],
                ),

              ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(12),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: new BorderRadius.circular(10),
                ),
                // width: 317,
                height: SizeConfig.scaleHeight(80),

                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: SizeConfig.scaleHeight(10),
                    start: SizeConfig.scaleWidth(12),
                    end: SizeConfig.scaleWidth(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_box_rounded,color: Colors.grey,),
                      SizedBox(
                        width:SizeConfig.scaleWidth(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'رقم الهاتف :',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.scaleHeight(10),
                          ),
                          Container(
                            height: SizeConfig.scaleHeight(25),
                            width:SizeConfig.scaleWidth(250),
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: ' عاملة هامة',
                                hintStyle: TextStyle(
                                    fontFamily: 'Cairo',
                                    color: Color(0xFF707070),
                                    fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.expand_more),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(12),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: new BorderRadius.circular(10),
                ),
                // width: 317,
                height: SizeConfig.scaleHeight(80),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: SizeConfig.scaleHeight(10),
                    start: SizeConfig.scaleWidth(12),
                    end: SizeConfig.scaleWidth(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width:SizeConfig.scaleWidth(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'عنوان المعاملة :',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height:SizeConfig.scaleHeight(5)),
                          SizedBox(
                            height: SizeConfig. scaleHeight(10),
                          ),
                          Container(
                            height:SizeConfig.scaleHeight(25),
                            width:SizeConfig.scaleWidth(250),

                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: ' كتابة نص العنوان',
                                hintStyle: TextStyle(
                                    fontFamily: 'Cairo',
                                    color: Color(0xFF707070),
                                    fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:SizeConfig.scaleHeight(12)),
              Container(
                width: double.infinity,
                height:SizeConfig.scaleHeight(160),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: new BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:EdgeInsetsDirectional.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'نص المعاملة:',
                      hintStyle: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xFF707070),
                          fontSize: 13),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:SizeConfig.scaleHeight(15)),
              Text(
                'إضافة مرفقات',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: SizeConfig.scaleHeight(60),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xFF0DBD7D),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        titleTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        content: Container(
                          height: 220,
                          width: 420,
                          child: Column(
                            children: [
                              Text(
                                'اختيار طريقة ارفاق الملفات',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.scaleHeight(30),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey.shade100,
                                  //onPrimary: Colors.black,
                                ),
                                onPressed: () async {
                                  await pickImage();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: Color(0xFF707070),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.scaleWidth(10),
                                      ),
                                      Text(
                                        'التصوير من خلال الكاميرا',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Cairo',
                                          color: Color(0xFF707070),
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                        color: Color(0xFF707070),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.scaleHeight(10),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await uploadImage();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey.shade100,
                                  //onPrimary: Colors.black,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(17),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.photo_camera_back,
                                        color: Color(0xFF707070),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.scaleWidth(10),
                                      ),
                                      Text(
                                        ' من خلال الاستديو',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Cairo',
                                          color: Color(0xFF707070),
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 12,
                                        color: Color(0xFF707070),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_copy,
                        color: Color(0xFF0DBD7D),
                      ),
                      SizedBox(
                        width: SizeConfig.scaleWidth(7),
                      ),
                      Text(
                        'ارفاق ملفات',
                        style: TextStyle(
                          color: Color(0xFF0DBD7D),
                          fontSize: 13,
                          fontFamily: 'Cairo',
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(height:SizeConfig.scaleHeight(30)),
              ElevatedButton(
                onPressed: () {
                  showDialog(


                      context: context,

                      builder: (ctx) => AlertDialog(

                        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        content: Image.asset('images/complaint.png'),
                      )
                  );
                },
                child: Text(
                  ' ارسال',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0DBD7D),
                  minimumSize:
                  Size(double.infinity, SizeConfig.scaleHeight(53)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> pickImage() async {
    // final _pickedFile = await _picker.getImage(source:ImageSource.camera );
    final _pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (_pickedFile != null) {
      setState(() {});
    }
  }

  Future<void> uploadImage() async {
    // final _pickedFile = await _picker.getImage(source:ImageSource.camera );
    final _pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (_pickedFile != null) {
      setState(() {});
    }
  }
}
