import 'package:flutter/material.dart';
import 'package:swmc/utils/size_config.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: SizeConfig.scaleHeight(32),
        start: SizeConfig.scaleWidth(20),
        end: SizeConfig.scaleWidth(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Card(
                elevation: 3,
                child: Container(
                  width: SizeConfig.scaleWidth(150),
                  height: SizeConfig.scaleHeight(190),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/complaint');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig.scaleHeight(23),
                        start: SizeConfig.scaleWidth(10),
                        end: SizeConfig.scaleWidth(12),
                        bottom: SizeConfig.scaleHeight(15),
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/Group1.png'),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Text(
                            'الشكاوي و الاقتراحات',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 12,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.scaleWidth(15),
              ),
              Card(
                elevation: 3,
                child: Container(
                  width: SizeConfig.scaleWidth(150),
                  height: SizeConfig.scaleHeight(190),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/request');
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig.scaleHeight(23),
                        start: SizeConfig.scaleWidth(18),
                        end: SizeConfig.scaleWidth(18),
                        bottom: SizeConfig.scaleHeight(15),
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/Group2.png'),
                          Text(
                            ' طلب الجمهور ',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 12,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(15),
          ),
          Row(
            children: [
              Card(
                elevation: 3,
                child: Container(
                  width: SizeConfig.scaleWidth(150),
                  height: SizeConfig.scaleHeight(190),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/query_bills');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig.scaleHeight(23),
                        start: SizeConfig.scaleWidth(14),
                        end: SizeConfig.scaleWidth(14),
                        bottom: SizeConfig.scaleHeight(15),
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/Group4.png'),
                          Text(
                            'استعلام عن فاتورة ',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 12,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.scaleWidth(15),
              ),
              Card(
                elevation: 3,
                child: Container(
                  width: SizeConfig.scaleWidth(150),
                  height: SizeConfig.scaleHeight(190),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig.scaleHeight(23),
                        start: SizeConfig.scaleWidth(18),
                        end: SizeConfig.scaleWidth(18),
                        bottom: SizeConfig.scaleHeight(15),
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/Group3.png'),
                          Text(
                            ' قراءة عدادات ',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 12,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
