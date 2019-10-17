package com;

public class test {
    public static void main(String[] args) {
        int arr[] = {11,33,22,55,44,88,66,77};
//        new test().quickSort(arr,0,arr.length-1);
        new  test().selectSort(arr,0);
//        int x = (int)Math.sqrt(8);
//        System.out.println(x);
        for (int result:arr
             ) {
            System.out.println(result+" ");
        }

//        100以内的质数
        int i,j,k;
        for (i = 2;i<100;i++){
            k = (int)Math.sqrt(i);
            for (j = 2;j <= k;j++){
                if (i%j == 0)
                    break;
            }
            if (j>k){
                System.out.println(i+" ");
            }

        }
    }

    public void quickSort(int[] arr,int left,int right){
        if (left>right){
            return;
        }
//        定义基准数及左右光标
        int base = arr[left];
        int i = left;
        int j = right;

        while (i != j ){
            while (arr[j] >= base && i<j){
                j--;
            }
            while (arr[i] <= base && i<j){
                i++;
            }

            int temp = arr[j];
            arr[j] = arr[i];
            arr[i] = temp;
        }

        arr[left] = arr[i];
        arr[i] = base;

        quickSort(arr,left,i-1);
        quickSort(arr,i+1,right);

    }


    public void selectSort(int arr[],int left){
        if (left>=arr.length){
            return;
        }
        for (int i = left;i<arr.length;i++){
            if (arr[i]<=arr[left]){
                int temp = arr[i];
                arr[i] = arr[left];
                arr[left] = temp;
            }
        }
        selectSort(arr,left+1);
    }
}
