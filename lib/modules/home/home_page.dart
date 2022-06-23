import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/app_colors.dart';
import 'package:payflow_app/shared/themes/app_text_styles.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeController = HomeController();

  final pages = [
    Container(color: Colors.green,),
    Container(color: Colors.purple,),
    Container(color: Colors.purple,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(128),
          child: Container(
            height: 150,
            color: AppColors.primary,
            child: Center(
              child: ListTile(
                title: Text.rich(
                  TextSpan(
                      text: "Olá, ",
                      style: AppTextStyles.titleRegular,
                      children: [
                        TextSpan(
                            text: "Caroline",
                            style: AppTextStyles.titleBoldBackground)
                      ]),
                ),
                subtitle: Text(
                  "Mantenha suas contas em dia",
                  style: AppTextStyles.captionShape,
                ),
                trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black)),
              ),
            ),
          )),
          body: pages[homeController.currentPage],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  homeController.setPage(0);                  
                });
              },
              icon: Icon(
                Icons.home,
                color: homeController.currentPage == 0 ? AppColors.primary : AppColors.body,
              )
            ),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5)
              ),
              child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/barcode_scanner");
                    }, 
                    icon: const Icon(
                      Icons.add_box_outlined,
                      color: AppColors.background,
                    )
              ),  
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  homeController.setPage(2);
                });
              },
              icon: Icon(
                Icons.description_outlined,
                color: homeController.currentPage == 2 ? AppColors.primary : AppColors.body
              )
            ),
          ],
        ),
      ),
    );
  }
}
