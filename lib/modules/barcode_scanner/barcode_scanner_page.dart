import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/app_colors.dart';
import 'package:payflow_app/shared/themes/app_text_styles.dart';
import 'package:payflow_app/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:payflow_app/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível identificar um código de barras",
      subTitle: "Tente escanear novamente ou digite o código do seu boleto.",
      primaryText: "Escanear novamente",
      primaryOnPressed: (){},
      secundaryText: "Digitar código",
      secundaryOnPressed: (){},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Escanei o código de barras do boleto",
              style: AppTextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: const BackButton(color: AppColors.background),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                )
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                )
              )
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryText: "Inserir código do boleto",
            primaryOnPressed: (){}, 
            secundaryText: "Adicionar da galeria",
            secundaryOnPressed: (){}
          )
        ),
      ),
    );
  }
}