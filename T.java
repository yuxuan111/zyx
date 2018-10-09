import java.io.IOException;
import java.util.Scanner;

public class T {
    public static String yuefen(int a, int b) {
        int y = 1;

        for (int i = a; i >= 1; i--) {
            if (a % i == 0 && b % i == 0) {
                y = i;
                break;
            }
        }
        int z = a / y;
        int m = b / y;
        if (z == 0) {
            return "0";
        }
        return "" + z + "/" + m;
    }


    public static void main(String[] args) throws IOException {
        int x, i, a1;
        String d = null;
        int M, Z;

        while (true) {
            System.out.println(" ----小学四则运算“软件----");
            System.out.println("1、整数计算式，2、真分数计算式（0结束程序）");
            Scanner scan1 = new Scanner(System.in);
            a1 = scan1.nextInt();
            if (a1 == 1) {
                Scanner in = new Scanner(System.in);
                System.out.println("你想输出四则运算的个数是：");
                int num = in.nextInt();
                String[] a = {"+", "-", "*", "/"};
                int b[];
                int c[];
                int j = 0, k;
                b = new int[4];
                c = new int[4];

                do {

                    int sum = -1, sum1 = -1, sum2 = -1;
                    for (int i1 = 0; i1 < 4; i1++) {
                        b[i1] = (int) (Math.random() * 100+1);
                    }
                    for (int i1 = 0; i1 < 4; i1++) {
                        c[i1] = (int) (Math.random() * 4+1);

                    }
                    k = (int) (Math.random() * 3 + 2);
                    switch (c[0]) {
                        case 1:
                            sum1 = b[0] + b[1];
                            break;
                        case 2:
                            sum1 = b[0] - b[1];
                            break;
                        case 3:
                            sum1 = b[0] * b[1];
                            break;
                        case 4:
                                sum1 = b[0] / b[1];
                            break;
                    }
                    switch (c[1]) {
                        case 1:
                            sum = sum1 + b[2];
                            break;
                        case 2:
                            sum = sum1 - b[2];
                            break;
                        case 3:
                            if (c[0] == 1) {
                                sum = b[0] + b[1] * b[2];break;
                            }

                            if (c[0] == 2) {
                                sum = b[0] - b[1] * b[2];
                                break;
                            }

                        case 4:
                            if (c[0] == 1) {
                                sum = b[0] + b[1] / b[2];break;
                            }

                        if (c[0] == 2) {
                            sum = b[0] - b[1] / b[2];
                                break;
                            }
                        }
                    if(k==3) {
                        switch (c[2]) {
                            case 1:
                                    sum2 = sum + b[3];
                                break;
                            case 2:
                                    sum2 = sum - b[3];
                                break;
                            case 3:
                                if (c[0] == 1 && c[1] == 1) {
                                    sum2 = b[0] + b[1] + b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 1 && c[1] == 2) {
                                    sum2 = b[0] + b[1] - b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 2 && c[1] == 1) {
                                    sum2 = b[0] - b[1] + b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 2 && c[1] == 2) {
                                    sum2 = b[0] - b[1] - b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 4 && c[1] == 1) {
                                        sum2 = b[0] / b[1] + b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 4 && c[1] == 2) {
                                        sum2 = b[0] / b[1] - b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 3 && c[1] == 1) {
                                    sum2 = b[0] * b[1] + b[2] * b[3];
                                    break;
                                }
                                if (c[0] == 3 && c[1] == 2) {
                                    sum2 = b[0] * b[1] - b[2] * b[3];
                                    break;
                                }
                            case 4:
                                if (c[0] == 1 && c[1] == 1) {
                                        sum2 = b[0] + b[1] + b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 1 && c[1] == 2) {
                                        sum2 = b[0] + b[1] - b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 2 && c[1] == 1) {
                                        sum2 = b[0] - b[1] + b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 2 && c[1] == 2) {
                                        sum2 = b[0] - b[1] - b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 4 && c[1] == 1) {
                                        sum2 = b[0] / b[1] + b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 4 && c[1] == 2) {
                                        sum2 = b[0] / b[1] - b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 3 && c[1] == 1) {
                                        sum2 = b[0] * b[1] + b[2] / b[3];
                                    break;
                                }
                                if (c[0] == 3 && c[1] == 2) {
                                        sum2 = b[0] * b[1] - b[2] / b[3];
                                    break;
                                }
                        }
                    }
                    if (sum < 0||sum2<0) {
                        j--;
                    } else {
                        int v=1; int h=0;
                        switch (k) {

                            case 2:
                                int f;

                                Scanner scan4=new Scanner(System.in);
                                System.out.println(b[0] + a[c[0]-1] + b[1] + a[c[1]-1] + b[2] + "= ？" );
                                f=scan4.nextInt();
                                if(f==sum) {
                                    System.out.println("回答正确--->");
                                    h++;
                                    System.out.println("你已经答对"+h+"道题目，加油！");
                                    v++;
                                    if(v==num){
                                        System.out.println("你目前得分"+h*100/num);
                                    }

                                }
                                else{
                                    System.out.println("你回答错误--->"+"正确答案为"+sum);
                                    System.out.println(num);
                                    v++;
                                    if(v==num){
                                        System.out.println("你目前得分"+h*100/num);
                                    }
                                }
                                break;

                            case 3:
                                int g;
                                Scanner scan5=new Scanner(System.in);
                                System.out.println(b[0] + a[c[0]-1] + b[1] + a[c[1]-1] + b[2] + a[c[2]-1] + b[3] + "= ？" );
                                g=scan5.nextInt();
                                if(g==sum2) {v++;
                                    System.out.println("你回答正确--->");
                                    h++;
                                    System.out.println("你已经答对"+h+"道题目，加油！");
                                    if(v==num){
                                        System.out.println("你目前得分"+h*100/num);
                                    }
                                }
                                else{v++;
                                    System.out.println("你回答错误--->"+"正确答案为"+sum2);
                                    if(v==num){
                                        System.out.println("你目前得分"+h*100/num);
                                    }
                                    }
                          break;
                        }
                       }
                    j++;

                } while (j <num);

               }
            if (a1 == 2) {
                System.out.println("请输入题目的数量");
                Scanner scan2 = new Scanner(System.in);
                x = scan2.nextInt();
                int x1, x2, B, m1, m2;
                System.out.println("请输入分母数值的范围");
                B = scan2.nextInt();
                for (i = 0; i < x; i++) {
                    m1 = 1 + (int) (Math.random() * B);//随机生成一个小于B的分母
                    x1 = (int) (Math.random() * m1);//生成一个比分母小的分子，实现真分数
                    m2 = 1 + (int) (Math.random() * B);//随机生成一个小于B的分母
                    x2 = (int) (Math.random() * m2);//生成一个比分母小的分子，实现真分数
                    int c = (int) (Math.random() * 3);//生成运算符
                    if (c == 0) {
                        Z = x1 * m2 + x2 * m1;
                        M = m1 * m2;
                        d = yuefen(Z, M);
                        System.out.print(x1 + "/" + m1 + "+" + x2 + "/" + m2 + "= " + d + "  "+"\n");
                    }
                    if (c == 1) {
                        Z = x1 * m2 - x2 * m1;
                        M = m1 * m2;
                        d = yuefen(Z, M);
                        System.out.print(x1 + "/" + m1 + "-" + x2 + "/" + m2 + "= " + d + "  "+"\n");
                    }
                    if (c == 2) {
                        Z = x1 * x2;
                        M = m1 * m2;
                        d = yuefen(Z, M);
                        System.out.print(x1 + "/" + m1 + "*" + x2 + "/" + m2 + "= " + d + "   "+"\n");
                    }
                    if (c == 3) {
                        Z = m1 * x2;
                        M = m2 * x1;
                        d = yuefen(Z, M);
                        System.out.print(x1 + "/" + m1 + "/" + x2 + "/" + m2 + "= " + d + "  "+"\n");
                    }
                    if ((i + 1) % 3 == 0) {
                        System.out.println();
                    }


                }
            }
            if (a1 == 3) {
                String w1, w2;
                int a;
                System.out.println("请输入一个分数");
                Scanner scan3 = new Scanner(System.in);
                String str1 = new String();
                str1 = scan3.next();
                w1 = str1.substring(0, 1);
                w2 = str1.substring(2, 3);
                a = w1.compareTo(w2);
                if (a < 0) {
                    System.out.print("正确");

                } else {
                    System.out.print("错误");
                }
            }
            //结束系统
            if (a1 == 0) {
                break;
            }
            System.out.print("请按任意键继续--->即将进入小学四则运算“软件”\n");
            System.in.read();
        }
    }
}

