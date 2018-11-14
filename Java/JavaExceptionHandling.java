import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        try{
            Scanner sc = new Scanner(System.in);
            int x= sc.nextInt();
            int y= sc.nextInt();
            if(y==0)
                throw new ArithmeticException("/ by zero");
            else{
                System.out.println(x/y);
            }
        }
        catch (InputMismatchException e){
            System.out.println("java.util.InputMismatchException");
        }
        catch (ArithmeticException e){
            System.out.println(e);
        }
    }
}
