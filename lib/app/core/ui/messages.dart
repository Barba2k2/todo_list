import 'package:flutter/material.dart';

import 'theme_extensions.dart';

class Messages {
  final BuildContext context;

  Messages._(this.context);

  factory Messages.of(BuildContext context) {
    return Messages._(context);
  }

  void showError(String message) => _showMessage(
        message,
        Colors.red,
      );

  void showInfo(String message) => _showMessage(
        message,
        context.primaryColor,
      );

  void _showMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: color,
        duration: const Duration(seconds: 8),
      ),
    );
  }
}
