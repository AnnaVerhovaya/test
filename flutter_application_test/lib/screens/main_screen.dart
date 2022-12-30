
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_test/resurses/images.dart';

import '../model/data.dart';
import '../widgets/section_button.dart';
import '../widgets/skelton.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  late bool _isLoading;
  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  final model = Data();
  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w500);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Stack(
                textDirection: TextDirection.rtl,
                 children: [
                const Image(image: AssetImage(AppImages.bell)),
                const Image(image: AssetImage(AppImages.point)),
              ]),
            ),
          ),
        ],
        title: const Text('Мои коды', style: style),
      ),
      body: _isLoading
          ? const NewSkelton()
          : Column(
              children: [
                const SectionButton(),
                Provider(model: model, child: const BodyWidget()),
              ],
            ),
      bottomNavigationBar: const _Bar(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        fontFamily: 'Roboto',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF211F1F));
    final model = Provider.read(context)!.model;
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: model.colorBox[index],
                ),
                child: ListTile(
                    leading: Stack(children: [
                      Image(image: AssetImage(model.boxPath[index])),
                      const Positioned(
                        top: 10,
                        left: 8,
                        child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(image: AssetImage(AppImages.barcode))),
                      ),
                    ]),
                    title: Text(
                      model.title[index],
                      style: style,
                    )),
              ),
            );
          }),
    );
  }
}

class _Bar extends StatelessWidget {
 const  _Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFCDC1FF);
    const style = TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF211F1F));
    return BottomNavigationBar(
      currentIndex: 0,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          label: '',
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageIcon(
              AssetImage(
                AppImages.settings,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                      width: 15,
                      height: 15,
                      child: Image(image: AssetImage(AppImages.barcode))),
                  const SizedBox(
                    width: 10,
                  ),
                   const Text(
                    'Мои коды',
                    style: style,
                  ),
                ],
              )),
        ),
        const BottomNavigationBarItem(
          label: '',
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: ImageIcon(
              AssetImage(AppImages.user),
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
