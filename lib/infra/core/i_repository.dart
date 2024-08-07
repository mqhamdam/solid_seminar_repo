import '../../domain/core/i_entity.dart';
import 'i_database.dart';

abstract class IRepository<T extends IEntity> extends IDatabase<T> {}
