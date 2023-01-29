import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:health_walk/data/repositories/settings/settings_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('on build setting screen');

    final settingsState = ref.watch(settingsProvider);

    final textfieldController = TextEditingController();

    useEffect(() {
      textfieldController.text = settingsState.dayStepGoalCount.toString();
    });

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('一日の目標歩数'),
                TextField(
                    keyboardType: TextInputType.number,
                    controller: textfieldController,
                    decoration: const InputDecoration(
                        // hintText: '趣味',
                        ),
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    }),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (int.parse(textfieldController.text) > 0) {
                ref.read(settingsProvider.notifier).updateSettings(ref
                    .read(settingsProvider)
                    .copyWith(
                        dayStepGoalCount: int.parse(textfieldController.text)));
              }
              FocusScope.of(context).unfocus();
            },
            child: const Text('登録'),
          )
        ],
      ),
    );
  }
}
