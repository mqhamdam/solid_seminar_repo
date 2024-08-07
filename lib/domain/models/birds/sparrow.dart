import '../../core/i_entities/i_bird_entity.dart';
import '../../core/interfaces/i_flyable.dart';
import '../../core/interfaces/i_soundable.dart';

/* ISP */
/* Interfaces Segragated by specific behaviors */
class Sparrow extends Bird implements IFlyable, ISoundable {
  Sparrow({
    required final String keyID,
  }) : super('Sparrow', keyID: keyID);

  @override
  void fly() {
    print('Sparrow is flying');
  }

  @override
  void sound() {
    print('Sparrow is chirping');
  }
}
