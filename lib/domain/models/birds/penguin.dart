import "../../core/i_entities/i_bird_entity.dart";
import "../../core/interfaces/i_soundable.dart";


class Penguin extends Bird implements ISoundable {
  Penguin({
    required final String keyID,
  }) : super('Penguin', keyID: keyID);

  @override
  void sound() {
    print('Penguin is making sound');
  }
}
