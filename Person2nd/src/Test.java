
public class Test {
public static void main(String[]args){
Person taro = new Person();
taro.name = "TARO";
taro.age = 18;
System.out.println(taro.name);
System.out.println(taro.age);
Person saburo = new Person("saburo");
System.out.println(saburo.name);
System.out.println(saburo.age);
Person nasi = new Person(25);
System.out.println(nasi.age);
System.out.println(nasi.name);
Person hanako= new Person(17,"hanako");
hanako.name="hanako";
System.out.println(hanako.age);


}
}
