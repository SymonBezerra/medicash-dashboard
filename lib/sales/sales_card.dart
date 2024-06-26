import 'package:dashboard/widgets/action_button.dart';
import 'package:dashboard/widgets/card_image.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class SalesCard extends StatelessWidget {
  final VoidCallback? redirect;
  const SalesCard({super.key, this.redirect});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 1000;
      Widget card = Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 10,
          left: 20,
          right: 20
        ),
        child: Container(
          height: isMobile ? 120 : 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepPurpleAccent,
              width: 3
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardImage(size: isMobile ? 90 : 150),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DashboardText(
                      text: "Leader Laboratory",
                      fontFamily: "Noto Sans",
                      size: isMobile ? 16 : 25,
                      fontWeight: FontWeight.bold
                    ),
                    const DashboardText(
                      text: "5% de cashback",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w600,
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.amberAccent,
                        ),
                        DashboardText(
                          text: "31/10/2024", 
                          fontFamily: "Noto Sans",
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ]
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        DashboardText(
                          text: "Loja Medicash", 
                          fontFamily: "Noto Sans",
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ]
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              if (!isMobile)
              Container(
                margin: const EdgeInsets.only(top: 10, right: 10),
                child: ActionButton(
                  icon: Icons.remove_red_eye,
                  onTap: redirect,
                  color: Colors.deepPurple[200],
                  onHoverColor: Colors.deepPurpleAccent,
                ),
              )
            ],
          )
        ),
      );
      if (!isMobile) {
        return card;
      } else {
        return InkWell(
          onTap: redirect,
          child: card
        );
      }
    });
  }
}