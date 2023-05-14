const int var15 = 32;
const int var32 = 15;

int main()
{
    int tmp = 32 + 15; //47
    tmp = 2 * tmp;       // 94
    return 0;
}
// int funcA()
// {
//     return var15;
// }
// int funcB()
// {
//     return var32;
// }
// int funcAB()
// {
//     return var32+var15;
// }
// int functA(int A)
// {
//     return var15+A;
// }
// int functB(int A)
// {
//     return var32+A;
// }
// int main()
// {
//     int this_int;
//     this_int = functA(functB(funcA()*funcB()*funcAB())); // expected: 22607
//     return 0;
// }