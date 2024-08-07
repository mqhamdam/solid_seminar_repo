import "domain/core/i_entities/i_bird_entity.dart";
import "domain/models/birds/penguin.dart";
import "domain/models/birds/sparrow.dart";
import "infra/sql_resolver/sql_bird_database.dart";
import "infra/repositories/bird_repository.dart";

/* Mock SQL Client (every Programming language might have client implementation of DB) */
class SQLClientPackage {}

void main() {
  /* DIP */
  /// Moving to Nosql just pass other implementation of IDatabase
  ///
  BirdRepository birdService =
      BirdRepository(SQLBirdDatabase(SQLClientPackage()));

  Sparrow sparrow = Sparrow(keyID: '1');
  Penguin penguin = Penguin(keyID: '2');

  penguin.sound();

  /* 
    Hunder million lines of code
  
   */
  birdService.saveDB(sparrow);

  birdService.updateDB(penguin);
}

/* Liskov Substituion */
// Subclass must be replacable with its base class
void testBird(Bird bird) {
  // We can pass any class that extends Bird, and we know
  // that it will have the birdName property

  print("Bird Name: ${bird.birdName}");
}
