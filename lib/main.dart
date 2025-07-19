import 'package:flutter/material.dart';

import 'package:nafas_app/nafas_app.dart';
import 'package:nafas_app/core/services/initialize_configuration_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeConfigurationApp();

  runApp(const NafasApp());
}
