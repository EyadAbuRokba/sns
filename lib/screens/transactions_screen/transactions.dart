import 'package:flutter/material.dart';
import 'package:swmc/screens/menu.dart';
import 'package:swmc/screens/transactions_screen/apply_transaction.dart';
import 'package:swmc/screens/transactions_screen/transaction_details.dart';
import 'package:swmc/utils/size_config.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'المعاملات',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsetsDirectional.only(end: SizeConfig.scaleWidth(16)),
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>NavDrawer()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: SizeConfig.scaleHeight(30),
            start: SizeConfig.scaleWidth(16),
            end: SizeConfig.scaleWidth(16),
            bottom: SizeConfig.scaleHeight(52),
          ),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
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
                              Text(
                                '5/11/2022',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_outlined,
                                    color: Colors.black),
                              ),
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
                        'هذا النص افتراضي لوصف الفاتورة هذا النص افتراضي لوصف الفاتورة هذا',
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
                      Card(
                        margin: EdgeInsetsDirectional.only(start: 220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xFFFF5F5F),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 15,
                            end: 15,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Text(
                            ' مغلقة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(10),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
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
                              Text(
                                '5/11/2022',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_outlined,
                                    color: Colors.black),
                              ),
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
                        'هذا النص افتراضي لوصف الفاتورة هذا النص افتراضي لوصف الفاتورة هذا',
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
                      Card(
                        margin: EdgeInsetsDirectional.only(start: 220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xff009ED8),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 15,
                            end: 15,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Text(
                            ' قيد التنفيذ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(10),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
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
                              Text(
                                '5/11/2022',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_outlined,
                                    color: Colors.black),
                              ),
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
                        'هذا النص افتراضي لوصف الفاتورة هذا النص افتراضي لوصف الفاتورة هذا',
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
                      Card(
                        margin: EdgeInsetsDirectional.only(start: 220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xFF0DBD7D),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0DBD7D),
        onPressed: () {},
        tooltip: 'Increment',
        child: IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ApplyTransctions()));
            },
          ),
      ),
    );
  }
}
