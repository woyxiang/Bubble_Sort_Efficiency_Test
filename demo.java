import java.util.Date;

public class demo {
    public static void main(String[] args) {
        Date startTime = new Date();
        int[] array = new int[10000];
        int insideInt = 1000000;
        for (int i = 0; i < array.length; i++) {
            array[i] = insideInt - i;
        }
        Date stopTime = bubble_sort(array);
        System.out.println((stopTime.getTime() - startTime.getTime())+"ms");
    }

    static Date bubble_sort(int[] unsorted) {
        for (int i = 0; i < unsorted.length; i++) {
            for (int j = i; j < unsorted.length; j++) {
                if (unsorted[i] > unsorted[j]) {
                    int temp = unsorted[i];
                    unsorted[i] = unsorted[j];
                    unsorted[j] = temp;
                }
            }
        }
        return new Date();
    }
}