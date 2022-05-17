import 'package:common_project/models/models_screen.dart';
import 'package:common_project/widgets/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class MyKhaliq extends StatefulWidget {
  const MyKhaliq({Key? key}) : super(key: key);

  @override
  State<MyKhaliq> createState() => _MyKhaliqState();
}

class _MyKhaliqState extends State<MyKhaliq> {
  List<ModelsScreen> listname = [
    ModelsScreen("Sales", "230K", Icons.settings, const Color(0xFFB0C9C7)),
    ModelsScreen("Customers", "239k", Icons.search, const Color(0xFFE6DEF1)),
    ModelsScreen("Products", "1.42K", Icons.person, const Color(0xFFF2EEE9)),
    ModelsScreen("Revenue", "474K", Icons.person_add_alt, const Color(0xFFF1DFDE)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              child: Container(
            height: 779.1,
            padding: const EdgeInsets.all(30),
            color: const Color(0xFF363636),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                      padding: const EdgeInsets.all(2),
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset("assets/images/Image1.jpg"),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF424242),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      )),
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 360,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: const Color(0xFF424242),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Sales Revenue",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            )
                          ],
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: listname.length,
                            itemBuilder: (context, index) {
                              return ReuseableWidgets(
                                listname[index].text1,
                                listname[index].text2,
                                listname[index].icon,
                                listname[index].color,
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )),
        ],
      ),
    );
  }
}
