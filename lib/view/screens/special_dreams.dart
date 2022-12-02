import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:wecan_task/controller/bindings/dream_details_binding.dart';
import 'package:wecan_task/controller/controllers/special_dreams_controller.dart';
import 'package:wecan_task/utils/utils.dart';
import 'package:wecan_task/view/screens/dream_details.dart';
import 'package:wecan_task/view/widgets/dream_list_item.dart';
import 'package:get/get.dart';

import '../../model/dream.dart';

class SpecialDreams extends StatelessWidget {
  const SpecialDreams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final specialController = Get.find<SpecialDreamsController>();
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
        child: Stack(
          alignment: Alignment.topLeft,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -130,
              //right: 130,
              top: 80,
              child: Image.asset(
                'assets/background.png',
                width: 350,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: Utils.phoneSize(
                    106,
                    height: true,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/menu.png',
                        width: Utils.phoneSize(
                          29,
                          height: false,
                        ),
                        height: Utils.phoneSize(
                          29,
                          height: true,
                        ),
                      ),
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
                    const Text(
                      'احلام مميزة',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: Utils.phoneSize(
                        15,
                        height: false,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: Utils.phoneSize(
                            49,
                            height: false,
                          ),
                          height: Utils.phoneSize(
                            49,
                            height: false,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff3EB78B,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/star.png',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Utils.phoneSize(
                        15,
                        height: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Utils.phoneSize(
                    30,
                    height: true,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RefreshIndicator(
                      color: const Color(0xff3EB78B),
                      onRefresh: () => Future.sync(
                          () => specialController.pagingController.refresh()),
                      child: PagedListView.separated(
                        pagingController: specialController.pagingController,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            color: Colors.black,
                            indent: 5,
                            //endIndent: 5,
                          );
                        },
                        builderDelegate: PagedChildBuilderDelegate<Dream>(
                          itemBuilder: (BuildContext context, item, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(
                                    () => DreamDetailsScreen(
                                        id: item.id.toString()),
                                    binding: DreamDetailsBinding());
                              },
                              child: DreamListItem(
                                dream: item,
                              ),
                            );
                          },
                          firstPageErrorIndicatorBuilder: (context) =>
                              const Center(
                            child: Text(
                              'نعتذر، لقد حدث خطأ ما',
                              style: TextStyle(color: Color(0xff3EB78B)),
                            ),
                          ),
                          newPageProgressIndicatorBuilder: (context) =>
                              const Center(
                            child: CircularProgressIndicator(
                              color: Color(
                                0xff3EB78B,
                              ),
                            ),
                          ),
                          firstPageProgressIndicatorBuilder: (context) =>
                              const Center(
                            child: CircularProgressIndicator(
                              color: Color(
                                0xff3EB78B,
                              ),
                            ),
                          ),
                          noItemsFoundIndicatorBuilder: (context) =>
                              const Center(
                            child: Text(
                              'نعتذر، لقد حدث خطأ ما',
                              style: TextStyle(color: Color(0xff3EB78B)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
