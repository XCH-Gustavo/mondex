import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondex/di/di.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:mondex/features/mondex/presentation/pages/monster_grid_page.dart';
import 'package:mondex/features/mondex/presentation/providers/insert_dummy_monster/insert_dummy_monster_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  configureDependencies();

  final container = ProviderContainer();
  await container.read(insertDummyMonsterProvider.future);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Mondex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mondex'),
        ),
        body: const MonsterGridPage(),
      ),
    );
  }
}