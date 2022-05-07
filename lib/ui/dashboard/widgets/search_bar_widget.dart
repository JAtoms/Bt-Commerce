import 'package:bt_commerce/constants/colors.dart';
import 'package:bt_commerce/constants/size_config.dart';
import 'package:bt_commerce/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textContent = StateProvider.autoDispose((ref) => '');

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.heightAdjusted(7),
          left: SizeConfig.widthAdjusted(3),
          right: SizeConfig.widthAdjusted(3)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    context.read(textContent).state = value;
                  },
                  style: TextStyle(
                      fontSize: SizeConfig.textAdjusted(1.9),
                      height: SizeConfig.textAdjusted(0.1)),
                  decoration: InputDecoration(
                    hintText: 'Toilet papers, nose mask, etc',
                    hintStyle: GlobalTextStyles.regularText(
                        color: GlobalColors.globalAsh),
                    filled: true,
                    fillColor: GlobalColors.ashWhite,
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: GlobalColors.globalBlack.withAlpha(100)),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
