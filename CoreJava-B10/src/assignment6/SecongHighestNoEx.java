package assignment6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class SecongHighestNoEx {

    public static void main(String[] args) {
        Scanner scr = new Scanner(System.in);
        List<Integer> numbersList = new ArrayList<Integer>();
        String c;

        do {
            System.out.print("Enter number : ");
            numbersList.add(scr.nextInt());
            System.out.println("More Numbers? y : n ");
            c = scr.next();
        }while (c.equals("y"));


        Collections.sort(numbersList);
        int index = (Integer) numbersList.size();
        System.out.println("Second Highest number in the list : " + numbersList.get(index - 2));
        System.out.println(numbersList);


    }
}
