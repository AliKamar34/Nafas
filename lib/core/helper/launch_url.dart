import 'package:flutter/material.dart';
import 'package:nafas_app/core/helper/show_custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        showCustomSnackBar(
          context,
          message: 'الفيديو غير متوفر',
          isSucceeded: false,
        );
      }
    }
  }
}
