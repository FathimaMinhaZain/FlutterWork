void main(List<String> args) {
 print("Hello, World!");

 print('\nFOR LOOP');
 for(int i=1;i<=100;i++){
  print(i);
 }

 print('\nDO WHILE LOOP');
 int j=1;
 do{
  print(j);
  j++;
 }while(j<=100);

 print('\nWHILE LOOP');
 int k=1;
 while(k<101){
  print(k);
  k++;
 }

 print('\nFunction');
 sum(6,2);
}

void sum(int a, int b){
  int sum=a+b;
  print("The sum is $sum");
}