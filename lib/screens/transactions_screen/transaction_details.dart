import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swmc/utils/size_config.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'تفاصيل المعامة',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/transactions');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color(0xFF0CB97A),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 15,
                      end: 15,
                      top: 5,
                      bottom: 5,
                    ),
                    child: Text(
                      ' قيد المتابعة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.date_range_outlined,
                  color: Color(0xFF0CB97A),
                ),
                Text(
                  'تاريخ الارسال',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Cairo',
                  ),
                ),
                Text(
                  ' 5/11/2022',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Cairo',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(20),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TransactionDetails()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' معاملة رقم #22 ',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            TextButton(
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
                                      height: 160,
                                      width: 580,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.delete_outline,
                                                color: Color(0xFFF96868),
                                              ),
                                              Text(
                                                'حذف المعاملة',
                                                style: TextStyle(
                                                  color: Color(0xFFF96868),
                                                  fontSize: 20,
                                                  fontFamily: 'Cairo',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: SizeConfig.scaleHeight(10),),

                                          Text(
                                            'هل تريد حذف هذه المعاملة؟ ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Cairo',
                                            ),
                                          ),
                                          SizedBox(height: SizeConfig.scaleHeight(30),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xFFF96868),
                                                  minimumSize: Size(SizeConfig.scaleWidth(120), SizeConfig.scaleHeight(44)),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  'حدف',
                                                  style: TextStyle(
                                                      fontFamily: 'Cairo',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xFFF5F5F5),
                                                  minimumSize: Size(SizeConfig.scaleWidth(120), SizeConfig.scaleHeight(44)),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => TransactionDetails()));
                                                },
                                                child: Text(
                                                  'الغاء',
                                                  style: TextStyle(
                                                    color: Color(0xFF707070),
                                                      fontFamily: 'Cairo',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'اغلاق المعاملة',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Cairo',
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.scaleWidth(5)),
                                  Icon(
                                    Icons.clear,
                                    color: Color(0xFF0CB97A),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),
                    Text(
                      '..موضوع الاستفسار',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),
                    Text(
                      ' النص افتراضي لوصف الفاتورة  هذا النص افتراضي لوصف الفاتورة هذا النص افتراضي لوصف الفاتورة هذا',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(10),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          'الاولوية :',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontFamily: 'Cairo'),
                        ),
                        Spacer(),
                        Container(
                          width: SizeConfig.scaleWidth(12),
                          height: SizeConfig.scaleWidth(12),
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.scaleWidth(5),
                        ),
                        Text(
                          'معاملة هامة ',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontFamily: 'Cairo'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.scaleHeight(50)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF009ED8),
                minimumSize: Size(double.infinity, SizeConfig.scaleHeight(53)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text(
                'الردود',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
