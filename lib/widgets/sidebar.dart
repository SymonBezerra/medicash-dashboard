import 'package:dashboard/widgets/sidebar_item.dart';
import 'package:dashboard/widgets/sidebar_profile.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        SideBarProfile(), 
        SideBarItem(
          icon: Icons.person_outlined,
          name: "Área do Parceiro",
          destination: "/home"
        ),
        SideBarItem(icon: Icons.shopping_cart_checkout_outlined,
          name: "Vendas",
          destination: "/sales"
        ),
        SideBarItem(
          icon: Icons.people_outline_sharp,
          name: "Usuários",
          destination: "/users"
        ),
      ]
    );
  }
}