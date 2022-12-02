import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecan_task/controller/controllers/dream_details_controller.dart';
import 'package:wecan_task/utils/utils.dart';

import '../../model/dream_details.dart';

class DreamDetailsScreen extends StatelessWidget {
  final String id;
  const DreamDetailsScreen({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DreamDetailsController>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          Utils.phoneSize(
            60,
            height: true,
          ),
        ),
        child: SizedBox(
          height: Utils.phoneSize(
            60,
            height: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: GetBuilder<DreamDetailsController>(
          builder: (context) {
            return FutureBuilder<DreamDetails?>(
                future: controller.getDreamDetails(id),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color(
                            0xff3EB78B,
                          ),
                        ),
                      );
                    case ConnectionState.done:
                      return snapshot.data != null
                          ? SingleChildScrollView(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Utils.phoneSize(
                                      106,
                                      height: true,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/logo.png',
                                          width: Utils.phoneSize(
                                            99,
                                            height: false,
                                          ),
                                          height: Utils.phoneSize(
                                            106,
                                            height: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: Utils.phoneSize(
                                      30,
                                      height: true,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.remove_red_eye,
                                            size: 15,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            '${snapshot.data?.views}',
                                            style: const TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Text(
                                          snapshot.data?.name ?? '',
                                          style: const TextStyle(
                                            fontSize: 22,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Utils.phoneSize(
                                          15,
                                          height: false,
                                        ),
                                      ),
                                      Transform.scale(
                                        scale: 1.6,
                                        child: Image.asset(
                                          'assets/path.png',
                                        ),
                                      ),
                                      SizedBox(
                                        width: Utils.phoneSize(
                                          15,
                                          height: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _getDataRow(
                                          'الحالة الاجتماعية : ${snapshot.data?.socialStatus}',
                                          3),
                                      _getDataRow(
                                          'العمر : ${snapshot.data?.age}', 2),
                                      _getDataRow(
                                          'الجنس : ${snapshot.data?.sex}', 2),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _getDataRow(
                                          'الحالة المادية : ${snapshot.data?.status}',
                                          1),
                                      _getDataRow(
                                          'الحالة الصحية : ${snapshot.data?.physicalCondition}',
                                          1)
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.7,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        'المنام :',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Utils.phoneSize(
                                          10,
                                          height: false,
                                        ),
                                      ),
                                      Transform.scale(
                                        scale: 1.4,
                                        child: Image.asset(
                                          'assets/path.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: Utils.phoneSize(
                                      343,
                                      height: false,
                                    ),
                                    //height: 155,
                                    child: Text(
                                      snapshot.data?.content ?? '',
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.7,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: Utils.phoneSize(
                                      344,
                                      height: false,
                                    ),
                                    height: 87,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                        104,
                                        195,
                                        159,
                                        0.9,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Google AdMob',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.7,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 10),
                                    width: Utils.phoneSize(
                                      345,
                                      height: false,
                                    ),
                                    //height: 214,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          opacity: 0.9,
                                          alignment: Alignment.bottomLeft,
                                          image:
                                              AssetImage('assets/white_logo.png')),
                                      color: const Color(
                                        0xff3EB78B,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            const Text(
                                              'رد المؤول :',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(
                                                  0xffF4CF00,
                                                ),
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Transform.scale(
                                              scale: 1.8,
                                              child: Image.asset(
                                                'assets/path.png',
                                                color: const Color(0xffF4CF00),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          snapshot.data?.adminReplay?.content ?? '',
                                          textAlign: TextAlign.start,
                                          textDirection: TextDirection.rtl,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'نعتذر، لقد حدث خطأ ما',
                                    style: TextStyle(color: Color(0xff3EB78B)),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                     controller.update();
                                    },
                                    icon: const Icon(
                                      Icons.refresh,
                                    ),
                                    color: const Color(0xff3EB78B),
                                  )
                                ],
                              ),
                            );
                    default:
                      return const Center(
                        child: Text(
                          'نعتذر، لقد حدث خطأ ما',
                          style: TextStyle(color: Color(0xff3EB78B)),
                        ),
                      );
                  }
                });
          }
        ),
      ),
    );
  }

  _getDataRow(String info, flex) {
    return Flexible(
      flex: flex,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              info,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              width: Utils.phoneSize(
                3,
                height: false,
              ),
            ),
            Image.asset(
              'assets/path.png',
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
