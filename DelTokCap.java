package works;

import java.util.Scanner;

public class DelTokCap {
	
	public static void main(String[]args){
		Scanner kb = new Scanner(System.in);
		String in = " "+kb.nextLine()+" ";
		String b = "";
		char[] res;

		b = in.replace("a", "").replace(",","");
		b = Up(b);
		System.out.println(b.trim());
	}
	public static String Up(String in){
		String a = "";
		char[] test = in.toCharArray();
		 for (int x = 0; x<test.length; x++) {
			 if(((test[x] >= 'a') && (test[x] <= 'z'))	&& (test[x-1] == ' ')){
					 test[x] = Character.toUpperCase(test[x]);};
					 a = a+test[x];
		 }
		 return a;
	}
}
