
 // Not cryptographically secure but fine for colors
 // Just i keep it as easy
int myRandomNumber(int max) {
  int time = DateTime.now().microsecondsSinceEpoch;
  int mixed = ((time * 37) ^ (time >> 3)) & 0x7FFFFFFF; 
  return mixed % max;
}
