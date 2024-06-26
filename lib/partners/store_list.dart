import 'package:dashboard/partners/list_item.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const DashboardText(
          text: "Lojas cadastradas", 
          fontFamily: "Noto Sans",
          size: 16,
          color: Colors.deepPurpleAccent,
          fontWeight: FontWeight.bold,
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 30,
              right: 30
            ),
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const ListItem();
              }
            ),
          ),
        )
      ],
    );
  }
}