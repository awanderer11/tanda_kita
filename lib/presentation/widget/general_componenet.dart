import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanda_kita/presentation/utils/colors.dart';

class GeneralComponent extends StatelessWidget {
  const GeneralComponent({
    super.key,
    required this.leading,
    required this.title,
    this.divider,
    this.isTrailing,
    this.colors,
    this.icon,
    this.onTap,
  });
  final String leading;
  final String title;
  final bool? divider;
  final bool? isTrailing;
  final Color? colors;
  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          leading: Text(
            leading,
            style: TextStyle(color: colors ?? Colors.black),
          ),
          title: Text(title,
              style: TextStyle(color: ColorApp.black, fontSize: 12),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end),
          trailing: isTrailing == true
              ? Icon(
                  icon ?? CupertinoIcons.forward,
                  color: colors ?? const Color(0xFFCCD2E3),
                )
              : null,
        ),
        Offstage(
          offstage: divider == false ? true : false,
          child: const Divider(
            indent: 12,
            endIndent: 16,
            height: 0,
          ),
        ),
      ],
    );
  }
}
