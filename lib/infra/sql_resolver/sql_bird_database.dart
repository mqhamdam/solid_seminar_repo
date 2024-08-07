import "../../domain/core/i_entities/i_bird_entity.dart";
import "../core/i_database.dart";
import "../core/sql_client.dart";

class SQLBirdDatabase extends SQLClient implements IDatabase<Bird> {
  SQLBirdDatabase(super._dbClient);

  @override
  void deleteDB(Bird entity) {
    dbClient.then((db) {
      print('Deleting ${entity.birdName} from SQL database');
    });
  }

  @override
  void saveDB(Bird entity) {
    dbClient.then((db) {
      print('Saving ${entity.birdName} to SQL database');
    });
  }

  @override
  void updateDB(Bird entity) {
    dbClient.then((db) {
      print('Updating ${entity.birdName} in SQL database');
    });
  }
}
