
String str1 = "112358";
char char1 = 'a';
int int1 = 0;
int index = 3;
int bitIndex = 0;
int localIndex = 0;
int bit;
int[] bitArray = {0,1};

char1 = str1.charAt(index);
int1 = int(char1);
int stringLength = 4;

stringLength = str1.length();

for(index = 0;index < stringLength;index++){

  char1 = str1.charAt(index);
  int1 = int(char1);
  for(localIndex = 7;localIndex >= 0;localIndex--){
    bit = int1 & int(pow(2,localIndex));
    bit = bit >> localIndex;
    print(bit);
    bitArray = append(bitArray,bit);
  }
  println();
  println(-1);
  bitArray = append(bitArray,-1);
}

for(bitIndex = 0;bitIndex < bitArray.length;bitIndex++){
  print(bitArray[bitIndex]);
}
