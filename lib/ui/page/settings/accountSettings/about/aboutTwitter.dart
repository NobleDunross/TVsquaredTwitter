import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/helper/utility.dart';
import 'package:flutter_twitter_clone/ui/page/settings/widgets/headerWidget.dart';
import 'package:flutter_twitter_clone/ui/page/settings/widgets/settingsRowWidget.dart';
import 'package:flutter_twitter_clone/ui/theme/theme.dart';
import 'package:flutter_twitter_clone/widgets/customAppBar.dart';
import 'package:flutter_twitter_clone/widgets/customWidgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: CustomAppBar(
        isBackButton: true,
        title: customTitleText(
          'About TV Squared',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          const HeaderWidget(
            'Help',
            secondHeader: true,
          ),
          SettingRowWidget(
            "Help Centre",
            vPadding: 0,
            showDivider: false,
            onPressed: () {
              Utility.launchURL(
                  "https://github.com/TheAlphamerc/flutter_twitter_clone/issues");
            },
          ),
          const HeaderWidget('Legal'),
          const SettingRowWidget(
            "Terms of Service",
            showDivider: true,
          ),
          const SettingRowWidget(
            "Privacy policy",
            showDivider: true,
          ),
          const SettingRowWidget(
            "Cookie use",
            showDivider: true,
          ),
          SettingRowWidget(
            "Legal notices",
            showDivider: true,
            onPressed: () async {
              showLicensePage(
                context: context,
                applicationName: 'TV Squared',
                applicationVersion: '1.0.0',
                useRootNavigator: true,
              );
            },
          ),
          const HeaderWidget('Developer'),
          SettingRowWidget("Github", showDivider: true, onPressed: () {
            Utility.launchURL("https://github.com/Tyreos-Ventures");
          }),
          SettingRowWidget("LinkidIn", showDivider: true, onPressed: () {
            Utility.launchURL(
                "https://www.linkedin.com/company/tyreos-asset-universe/");
          }),
          SettingRowWidget("Website", showDivider: true, onPressed: () {
            Utility.launchURL("https://tauterminal.io/");
          }),
        ],
      ),
    );
  }
}
