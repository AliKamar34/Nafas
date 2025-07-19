import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nafas_app/core/services/custom_bloc_observer.dart';
import 'package:nafas_app/core/services/get_it_service.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/features/savings_counter/data/models/savings_counter_model.dart';
import 'package:nafas_app/firebase_options.dart';

Future<void> initializeConfigurationApp() async {
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  await Hive.initFlutter();
  Hive.registerAdapter(SavingsCounterModelAdapter());
  await Hive.openBox<SavingsCounterModel>('savingsBox');
  setupGetIt();
}
