import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:swmc/api/provider/user_provider.dart';
import 'package:swmc/preferences/user_preferences.dart';
import 'package:swmc/screens/bottom_navigator/home_screen.dart';
import 'package:swmc/screens/bottom_navigator/location_screen.dart';
import 'package:swmc/screens/bottom_navigator/main_screen.dart';
import 'package:swmc/screens/bottom_navigator/service_screen.dart';
import 'package:swmc/screens/complaints_screen/apply_screen.dart';
import 'package:swmc/screens/complaints_screen/complaint_scrren.dart';
import 'package:swmc/screens/complaints_screen/make_complaint.dart';
import 'package:swmc/screens/complaints_screen/request.dart';
import 'package:swmc/screens/login_screen.dart';
import 'package:swmc/screens/query_screen/query_bills.dart';
import 'package:swmc/screens/splashScreen.dart';
import 'package:swmc/screens/support/technical_support.dart';
import 'package:swmc/screens/transactions_screen/transactions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreferencesController().initPreferences();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>( create: (context) => UserProvider()..getMuns(context)),
      ],
      child: MaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('ar')],
        initialRoute: '/splash_Screen',
        routes: {
          '/splash_Screen': (context) => SplashScreen(),
          '/main_screen': (context) => MainScreen(),
          '/login_screen': (context) => LoginScreen(),
          '/complaint': (context) => Complaint(),
          '/home_screen': (context) => HomeScreen(),
          // '/request': (context) => RequestAudience(),
          '/apply_screen': (context) => Apply(),
          '/query_bills': (context) => QueryBills(),
          '/transactions' : (context)=>Transactions(),
          '/technical_support' : (context)=>TechnicalSupport(),
          '/location' : (context)=>DropdownButtonExample(),
          '/make_complaint' : (context)=>MakeComplaint(),
          '/service_screen' : (context)=>ServiceScreen(),


        },
      ),
    );
  }
}

