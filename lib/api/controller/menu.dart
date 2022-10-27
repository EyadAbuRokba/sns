import 'package:flutter/material.dart';
import 'package:swmc/preferences/user_preferences.dart';
import 'package:swmc/screens/query_screen/billing_%20record.dart';
import 'package:swmc/screens/transactions_screen/transactions.dart';
import 'package:swmc/utils/size_config.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'أحمد فوزي شرف',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Cairo',
              ),
            ),
            accountEmail: Text(
              'رقم الهوية : 10203040',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 12,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/re.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF0CB97A),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text(
              'الرئيسية',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text(
              'المعاملات',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
            ),
            onTap: () =>Navigator.pushReplacementNamed(context, '/transactions'),
          ),
          ListTile(
            leading: Icon(Icons.receipt_outlined),
            title: Text(
              'سجل الفواتير',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BillingRecord(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text(
              'تتبع الشكاوي',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.live_help_outlined),
            title: Text(
              'الدعم الفني ',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
            ),
            onTap: () => null,
          ),
          SizedBox(height: SizeConfig.scaleHeight(48)),
          ListTile(
              title: Text(
                'تسجيل خروج',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 15,
                ),
              ),
              leading: Icon(Icons.exit_to_app),
              onTap: () async {
                await UserSharedPreferencesController().clear();
                Navigator.pushReplacementNamed(context, '/login_screen');
              }),
        ],
      ),
    );
  }
}
