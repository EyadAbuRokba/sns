// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:swmc/screens/menu.dart';
// import 'package:swmc/utils/size_config.dart';
//
// class RequestAudience extends StatefulWidget {
//   const RequestAudience({Key? key}) : super(key: key);
//
//   @override
//   _RequestAudienceState createState() => _RequestAudienceState();
// }
//
// class _RequestAudienceState extends State<RequestAudience> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Center(
//           child: Text(
//             ' طلب الجمهور ',
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Cairo',
//                 color: Colors.black),
//           ),
//         ),
//         actions: [
//           IconButton(
//             padding: EdgeInsetsDirectional.only(end: SizeConfig.scaleWidth(16)),
//             icon: Icon(
//               Icons.menu,
//               size: 30,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>NavDrawer()),
//               );
//             },
//           ),
//         ],
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/main_screen');
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//             size: 20,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsetsDirectional.only(
//           start: SizeConfig.scaleWidth(16),
//           end: SizeConfig.scaleWidth(16),
//           top: SizeConfig.scaleWidth(34),
//           bottom: SizeConfig.scaleWidth(16),
//         ),
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 'الأقسام:',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Cairo',
//                 ),
//               ),
//               SizedBox(
//                 height: SizeConfig.scaleHeight(12),
//               ),
//               Container(
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Card(
//                         elevation: 0,
//                         child: Container(
//                           width: SizeConfig.scaleWidth(85),
//                           height: SizeConfig.scaleHeight(100),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Navigator.pushNamed(context, '/complaint');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                 top: SizeConfig.scaleHeight(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Image.asset('images/Rectangle6.png'),
//                                   SizedBox(
//                                     height: SizeConfig.scaleHeight(5),
//                                   ),
//                                   Text(
//                                     'التنظبم ',
//                                     style: TextStyle(
//                                         fontFamily: 'Cairo',
//                                         fontSize: 10,
//                                         color: Colors.black),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0,
//                         child: Container(
//                           width: SizeConfig.scaleWidth(85),
//                           height: SizeConfig.scaleHeight(100),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Navigator.pushNamed(context, '/complaint');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                 top: SizeConfig.scaleHeight(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Image.asset('images/Rectangle7.png'),
//                                   SizedBox(
//                                     height: SizeConfig.scaleHeight(5),
//                                   ),
//                                   Text(
//                                     'شركة الكهرباء ',
//                                     style: TextStyle(
//                                         fontFamily: 'Cairo',
//                                         fontSize: 10,
//                                         color: Colors.black),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0,
//                         child: Container(
//                           width: SizeConfig.scaleWidth(90),
//                           height: SizeConfig.scaleHeight(100),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Navigator.pushNamed(context, '/complaint');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                 top: SizeConfig.scaleHeight(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Image.asset('images/Rectangle8.png'),
//                                   SizedBox(
//                                     height: SizeConfig.scaleHeight(5),
//                                   ),
//                                   Text(
//                                     'بلدية بيت حانون ',
//                                     style: TextStyle(
//                                         fontFamily: 'Cairo',
//                                         fontSize: 10,
//                                         color: Colors.black),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0,
//                         child: Container(
//                           width: SizeConfig.scaleWidth(85),
//                           height: SizeConfig.scaleHeight(100),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Navigator.pushNamed(context, '/complaint');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                 top: SizeConfig.scaleHeight(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Image.asset('images/Rectangle9.png'),
//                                   SizedBox(
//                                     height: SizeConfig.scaleHeight(5),
//                                   ),
//                                   Text(
//                                     'بلدية خانونيس ',
//                                     style: TextStyle(
//                                         fontFamily: 'Cairo',
//                                         fontSize: 10,
//                                         color: Colors.black),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         elevation: 0,
//                         child: Container(
//                           width: SizeConfig.scaleWidth(85),
//                           height: SizeConfig.scaleHeight(100),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Navigator.pushNamed(context, '/complaint');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.white,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                 top: SizeConfig.scaleHeight(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Image.asset('images/Rectangle6.png'),
//                                   SizedBox(
//                                     height: SizeConfig.scaleHeight(5),
//                                   ),
//                                   Text(
//                                     'التنظبم ',
//                                     style: TextStyle(
//                                         fontFamily: 'Cairo',
//                                         fontSize: 12,
//                                         color: Colors.black),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: SizeConfig.scaleHeight(25),
//               ),
//               Text(
//                 'الخدمات:',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Cairo',
//                 ),
//               ),
//               SizedBox(
//                 height: SizeConfig.scaleHeight(12),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: SizeConfig.scaleHeight(78),
//                 child: Stack(
//                   children: [
//                     Card(
//                       clipBehavior: Clip.hardEdge,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Container(
//                         height: 78,
//                         width: 320,
//                         decoration: BoxDecoration(
//                             color: Colors.teal.shade50,
//                             border: Border(
//                                 right: BorderSide(
//                               color: Color(0xFF0FB0A0),
//                               width: 7,
//                             ))),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.only(
//                               start: SizeConfig.scaleWidth(12),
//                             top: SizeConfig.scaleHeight(12),
//                             bottom: SizeConfig.scaleHeight(12),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'طلب موقع عام',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                               Text(
//                                 '  مدة التنفيذ: 48 ساعة',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       top: 18,
//                       bottom: 18,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/apply_screen');
//                         },
//                         child: Text(
//                           ' قدم الآن',
//                           style: TextStyle(
//                             fontFamily: 'Cairo',
//                             fontSize: 12,
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xFF0FB0A0),
//                           minimumSize: Size(SizeConfig.scaleWidth(82),
//                               SizeConfig.scaleHeight(28)),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: SizeConfig.scaleHeight(12),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: SizeConfig.scaleHeight(78),
//                 child: Stack(
//                   children: [
//                     Card(
//                       clipBehavior: Clip.hardEdge,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Container(
//                         height: 78,
//                         width: 320,
//                         decoration: BoxDecoration(
//                             color: Colors.blue.shade50,
//                             border: Border(
//                                 right: BorderSide(
//                                   color: Color(0xFF009ED8),
//                                   width: 7,
//                                 ))),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(12),
//                             top: SizeConfig.scaleHeight(12),
//                             bottom: SizeConfig.scaleHeight(12),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'طلب اشتراك مياه جديد ',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                               Text(
//                                 '  مدة التنفيذ: 72 ساعة',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       top: 18,
//                       bottom: 18,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/apply_screen');
//                         },
//                         child: Text(
//                           ' قدم الآن',
//                           style: TextStyle(
//                             fontFamily: 'Cairo',
//                             fontSize: 12,
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xFF009ED8),
//                           minimumSize: Size(SizeConfig.scaleWidth(82),
//                               SizeConfig.scaleHeight(28)),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: SizeConfig.scaleHeight(12),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: SizeConfig.scaleHeight(78),
//                 child: Stack(
//                   children: [
//                     Card(
//                       clipBehavior: Clip.hardEdge,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Container(
//                         height: 78,
//                         width: 320,
//                         decoration: BoxDecoration(
//                             color: Colors.yellow.shade50,
//                             border: Border(
//                                 right: BorderSide(
//                                   color: Color(0xFFFDB00A),
//                                   width: 7,
//                                 ))),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.only(
//                             start: SizeConfig.scaleWidth(12),
//                             top: SizeConfig.scaleHeight(12),
//                             bottom: SizeConfig.scaleHeight(12),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'طلب موقع عام',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                               Text(
//                                 '  مدة التنفيذ: 48 ساعة',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: 'Cairo',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       top: 18,
//                       bottom: 18,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/apply_screen');
//                         },
//                         child: Text(
//                           ' قدم الآن',
//                           style: TextStyle(
//                             fontFamily: 'Cairo',
//                             fontSize: 12,
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xFFFDB00A),
//                           minimumSize: Size(SizeConfig.scaleWidth(82),
//                               SizeConfig.scaleHeight(28)),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
