import java.util.Arrays;
import java.util.ArrayList;

public class BubbleSort{
    public static <T extends Comparable<T>> void bubbleSort(ArrayList<T> arr){
        for(int i = 0; i < arr.size() - 1; i++){
            for(int j = 0; j < arr.size() - i - 1; j++){
                if(arr.get(j+1).compareTo(arr.get(j)) < 0){
                    T temp = arr.get(j);
                    arr.set(j, arr.get(j+1));
                    arr.set(j+1, temp);
                }
            }
        }
    }

    public static void main(String[] args){

        //Integer
        ArrayList<Integer> arr = new ArrayList<>(Arrays.asList(420, 13, 69, 9, 20));

        //String
        //ArrayList<String> arr = new ArrayList<>(Arrays.asList("Ramon", "Johan", "Basti", "Rithik", "Patrick")); 


        System.out.println("UNSORTED");
        System.out.println(arr.toString() + "\n");

        bubbleSort(arr);

        System.out.println("SORTED");
        System.out.println(arr.toString());

        

    }   
}