// Not cryptographically secure but fine for colors
// Just i keep it as easy
/// Generates a pseudo-random integer within the range [0, max).

int myRandomNumber(int max) {
  final int time = DateTime.now().microsecondsSinceEpoch;
  final int mixed = ((time * 37) ^ (time >> 3)) & 0x7FFFFFFF;

  return mixed % max;

}
