import '../models/notifications_item_model.dart';
import 'package:bluecrew/core/app_export.dart';
import 'package:bluecrew/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
    this.changeSwitch,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          notificationsItemModelObj.newpostTxt,
          style: theme.textTheme.bodyLarge,
        ),
        CustomSwitch(
          value: notificationsItemModelObj.isSelectedSwitch,
          onChange: (value) {
            changeSwitch?.call(value);
          },
        ),
      ],
    );
  }
}
