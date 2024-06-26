import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String header;
  final String body;
  final bool toggleStats;
  final double growth;
  final bool increase;
  const StatsCard({
    super.key, 
    required this.header, 
    required this.body,
    this.toggleStats=true,
    this.growth=0,
    this.increase=true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 90,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            ),
            boxShadow: <BoxShadow> [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black
              )
            ],
            color: Colors.white
          ),
        ),
        Container(
          height: 90,
          width: 250,
          padding: const EdgeInsets.only(
            bottom: 10,
            left: 10,
            right: 10,
            top: 25
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepPurpleAccent,
              width: 4
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.transparent
          ),
          child: Row(
            mainAxisAlignment: growth != 0 ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
            children: [
              DashboardText(
                text: body,
                fontFamily: "Open Sans",
                size: 20,
                // fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
              if (toggleStats)
              Row(
                children: [
                  Icon(
                    increase ? Icons.arrow_upward : Icons.arrow_downward,
                    color: increase ? Colors.greenAccent : Colors.redAccent,
                  ),
                DashboardText(
                  text: "${growth.toStringAsFixed(2)}%",
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.bold,
                  color: increase ? Colors.greenAccent : Colors.redAccent,
                  size: 20
                )
                ],
              ),
            ],
          )
        ),
      Container(
          padding: const EdgeInsets.only(
            left: 7.5,
            top: 2
          ),
          height: 30,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.deepPurpleAccent
          ),
          child: DashboardText(
            text: header,
            fontFamily: "Noto Sans",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}