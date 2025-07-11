import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'local_data_sources.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  Database? _database;

  @override
  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    print('Database path: ${await getDatabasesPath()}');
    final path = join(dbPath, 'mondex.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE monster(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            description TEXT NOT NULL,
            originalGame TEXT NOT NULL,
            color TEXT NOT NULL,
            imageUrl TEXT NOT NULL,
            types TEXT NOT NULL
          )
        ''');
      },
    );
  }

  @override
  Future<void> insertMonster({Map<String, dynamic>? monster}) async {
    final db = await database();
    if (monster == null) {
      throw ArgumentError('monster cannot be null');
    }
    await db.insert(
      'monster',
      monster,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<List<Map<String, dynamic>>> getAllMonster() async {
    final db = await database();
    return await db.query('monster');
  }

  @override
  Future<void> insertDummyMonsters() async {
    final db = await database();
    await db.delete('monster');
    await insertMonster(monster: {
      'name': 'Greymon',
      'description': 'A Dinosaur Digimon whose cranial skin has hardened so that it is covered in a rhinoceros beetle-like shell. It is extremely aggressive, with a body like a lethal weapon covered in sharp claws and gigantic horns.',
      'originalGame': 'Digimon Virtual Pet',
      'color': '#00CC90',
      'imageUrl': 'https://static.wikia.nocookie.net/digituentirol/images/6/64/Greymon.png/revision/latest?cb=20150727163801&path-prefix=es',
      'types': 'Vaccine,Reptile',
    });
    await insertMonster(monster: {
      'name': 'Charizard',
      'description': 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
      'originalGame': 'Pokemon Red/Blue',
      'color': '#FFCC00',
      'imageUrl':
        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      'types': 'Fire,Flying',
    });
    await insertMonster(monster: {
      'name': 'Ratha',
      'description': 'The main monster companion from Monster Hunter Stories, known as Razewing Ratha.',
      'originalGame': 'Monster Hunter Stories',
      'color': '#F05000',
      'imageUrl':
        'https://static.wikia.nocookie.net/monsterhunter/images/d/df/MHST-Ratha_Render_001.png/revision/latest/scale-to-width-down/1000?cb=20181124140625',
      'types': 'Flying Wyvern,Fire',
    });
    await insertMonster(monster: {
      'name': 'Grizzbolt',
      'description': 'With a friendly smile and a hardy physique, it is docile towards one it recognizes as a partner. For reasons unexplained, its personality undergoes a drastic change when wielding a minigun.',
      'originalGame': 'Palworld',
      'color': '#9060F0',
      'imageUrl':
        'https://static.wikia.nocookie.net/palworld/images/d/dd/Grizzbolt.png/revision/latest?cb=20240123195342',
      'types': 'Eletric',
    });
  }

  @override
  Future<void> insertAddDummyMonster() async {
    await insertMonster(monster: {
      'name': 'Testmon',
      'description': 'This is a test monster for Mondex.',
      'originalGame': 'Mondex',
      'color': '#777777',
      'imageUrl': 'https://static.wikia.nocookie.net/digituentirol/images/6/64/Greymon.png/revision/latest?cb=20150727163801&path-prefix=es',
      'types': 'Test,Code',
    });
  }
}

// class LocalDataSource {
//   static final LocalDataSource _instance = LocalDataSource._internal();
//   factory LocalDataSource() => _instance;
//   LocalDataSource._internal();

//   Database? _database;  
// }
