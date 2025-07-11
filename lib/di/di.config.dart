// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/mondex/data/datasources/local_data_sources.dart' as _i738;
import '../features/mondex/data/datasources/local_data_sources_impl.dart'
    as _i409;
import '../features/mondex/data/repository/local_repository_impl.dart' as _i160;
import '../features/mondex/domain/repositories/local_repository.dart' as _i481;
import '../features/mondex/domain/usecases/get_all_monster_use_case.dart'
    as _i584;
import '../features/mondex/domain/usecases/insert_add_dummy_monsters_use_case.dart'
    as _i517;
import '../features/mondex/domain/usecases/insert_dummy_monsters_use_case%20copy.dart'
    as _i301;
import '../features/mondex/domain/usecases/insert_monster_use_case.dart'
    as _i598;
import 'secure_storage_module.dart' as _i897;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final flutterSecureStorageModule = _$FlutterSecureStorageModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => flutterSecureStorageModule.secureStorage,
    );
    gh.lazySingleton<_i738.LocalDataSource>(() => _i409.LocalDataSourceImpl());
    gh.lazySingleton<_i481.LocalRepository>(
      () => _i160.LocalRepositoryImpl(gh<_i738.LocalDataSource>()),
    );
    gh.factory<_i584.GetAllMonsterUseCase>(
      () => _i584.GetAllMonsterUseCase(gh<_i481.LocalRepository>()),
    );
    gh.factory<_i517.InsertAddDummyMonsterUseCase>(
      () => _i517.InsertAddDummyMonsterUseCase(gh<_i481.LocalRepository>()),
    );
    gh.factory<_i301.InsertDummyMonsterUseCase>(
      () => _i301.InsertDummyMonsterUseCase(gh<_i481.LocalRepository>()),
    );
    gh.factory<_i598.InsertMonsterUseCase>(
      () => _i598.InsertMonsterUseCase(gh<_i481.LocalRepository>()),
    );
    return this;
  }
}

class _$FlutterSecureStorageModule extends _i897.FlutterSecureStorageModule {}
