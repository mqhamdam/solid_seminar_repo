import '../../domain/core/i_entities/i_bird_entity.dart';
import '../core/i_database.dart'; 
import '../core/i_repository.dart';

class BirdRepository<T extends IDatabase<Bird>> implements IRepository<Bird> {
  final T _database;

  BirdRepository(this._database);

  @override
  void deleteDB(Bird entity) {
    _database.deleteDB(entity);
  }

  @override
  void saveDB(Bird entity) {
    _database.saveDB(entity);
  }

  @override
  void updateDB(Bird entity) {
    _database.updateDB(entity);
  }
}
