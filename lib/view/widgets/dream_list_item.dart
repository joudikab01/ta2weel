import 'package:flutter/material.dart';
import 'package:wecan_task/utils/utils.dart';

import '../../model/dream.dart';

class DreamListItem extends StatelessWidget {
  final Dream? dream;
  const DreamListItem(
      {required this.dream,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            width: Utils.phoneSize(
              25,
              height: false,
            ),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                17,
              ),
              color: const Color(
                0xff3EB78B,
              ),
            ),
            child: FittedBox(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  dream?.category ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Utils.phoneSize(
              10,
              height: false,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.remove_red_eye,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '${dream?.views}',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          dream?.name ?? '',
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    dream?.content ?? '',
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Utils.phoneSize(
              10,
              height: false,
            ),
          ),
          Image.asset(
            'assets/path.png',
          ),
        ],
      ),
    );
  }
}
