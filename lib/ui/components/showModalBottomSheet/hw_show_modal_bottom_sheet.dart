import 'package:flutter/material.dart';

Future<void> mcShowModalBottomSheet({
  required BuildContext context,
  required Widget child,
  double heightPercent = 0.9,
}) async {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    backgroundColor: const Color(0x4B000000),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    builder: (context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16), // 中身の要素によっては丸みを突き抜けてきちゃうのでこっちにもradius設置
        ),
        clipBehavior: Clip.hardEdge,
        child: Container(
          height: MediaQuery.of(context).size.height * heightPercent,
          color: const Color(0xFFFFFBFB),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 0),
                child: child,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 13.0,
                  bottom: 18.0,
                ),
                child: Center(
                  heightFactor: 0,
                  child: Container(
                    width: 44,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xff5A2027),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
