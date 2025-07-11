import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/get_all_monster/get_all_monster_provider.dart';
import '../providers/insert_add_dummy_monster/insert_add_dummy_monster_provider.dart';
import 'monster_details_page.dart';

class MonsterGridPage extends ConsumerWidget {
  const MonsterGridPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monstersAsync = ref.watch(getAllMonsterProvider);

    return Scaffold(
      body: monstersAsync.when(
        data: (monsters) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: monsters.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              final monster = monsters[index];
              final color = Color(int.parse(monster.color.replaceFirst('#', '0xff')));
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MonsterDetailsPage(
                        monster: monster,
                      ),
                    ),
                  );
                },
                child: Card(
                  color: color,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            monster.imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          monster.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ref.read(insertAddDummyMonsterProvider.future);
          ref.invalidate(getAllMonsterProvider);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}