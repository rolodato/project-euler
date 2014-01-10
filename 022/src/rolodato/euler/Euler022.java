package rolodato.euler;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

/**
 * 
 Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
 * containing over five-thousand first names, begin by sorting it into
 * alphabetical order. Then working out the alphabetical value for each name,
 * multiply this value by its alphabetical position in the list to obtain a name
 * score.
 * 
 * For example, when the list is sorted into alphabetical order, COLIN, which is
 * worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
 * would obtain a score of 938 x 53 = 49714.
 * 
 * What is the total of all the name scores in the file?
 * 
 * 
 */
public class Euler022 {
	public static void main(String[] args) throws FileNotFoundException {
		Scanner sc = new Scanner(new File("names.txt"));
		List<String> names = Arrays.asList(sc.nextLine().split("\"(,\")?"));
		Collections.sort(names);
		long sum = 0;
		for (int i = 1; i < names.size(); i++) {
			sum += value(names.get(i)) * i;
		}
		System.out.println(sum);
		System.out.println(value("COLIN"));
	}
	
	private static int value(String name) {
		int sum = 0;
		for (char c : name.toCharArray()) {
			sum += c - 'A' + 1;
		}
		return sum;
	}
}
