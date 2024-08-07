import '../../domain/core/i_entity.dart';

abstract class IDatabase<T extends IEntity> {
  void saveDB(T entity);
  void updateDB(T entity);
  void deleteDB(T entity);
}
