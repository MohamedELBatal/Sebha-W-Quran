import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/home/tabs/ahadeth_tab.dart';
import 'package:islami_application/home/tabs/quran_tab.dart';
import 'package:islami_application/home/tabs/sebha_tab.dart';
import 'package:islami_application/home/tabs/settings_tab.dart';
import 'package:islami_application/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "Home";

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackgroundPath(),
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_quran.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_hadeth.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_sebha.png"),
                    ),
                    label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    const SebhaTab(),
    const SettingsTab(),
  ];
}
