import "../../domain/core/i_entities/i_bird_entity.dart";
import "../core/i_database.dart";
import "../core/nosql_client.dart";

class NoSQLBirdDatabase extends NoSQLClient implements IDatabase<Bird> {
  NoSQLBirdDatabase(super.dbClient);

  @override
  void deleteDB(Bird entity) {
    print('Deleting ${entity.birdName} from NoSQL database');
  }

  @override
  void saveDB(Bird entity) {
    print('Saving ${entity.birdName} to NoSQL database');
  }

  @override
  void updateDB(Bird entity) {
    print('Updating ${entity.birdName} in NoSQL database');
  }
}
