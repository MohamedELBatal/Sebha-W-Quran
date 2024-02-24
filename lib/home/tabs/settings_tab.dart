import 'package:flutter/material.dart';
import 'package:islami_application/bottom_sheet/them_bottom_sheet.dart';

import '../../bottom_sheet/language_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",style:Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
                isScrollControlled: true,
                builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height * .70,
                  child: LanguageBottomSheet(),
                );
              },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFB7935F)),
                borderRadius: BorderRadius.circular(25),),
              child: Text("Arabic",style:Theme.of(context).textTheme.bodyMedium,),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          Text("Theme",style:Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: ThemeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFB7935F)),
                borderRadius: BorderRadius.circular(25),),
              child: Text("Light",style:Theme.of(context).textTheme.bodyMedium,),
            ),
          ),
        ],
      ),
    );
  }
}
