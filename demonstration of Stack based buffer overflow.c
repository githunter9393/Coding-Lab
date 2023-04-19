#include <stdio.h>
#include <stdlib.h>

int test_pw()
{    
       char password[10];
       printf("password address: %p\n", password);
       printf("enter password: \n");
       gets(password);                      \\ the user will exploit this to inject data into the instruction pointer.
       return 1;
}

                       \\ once the user accurately planted the address of this line in the instruction pointer, the program will jump to this line.
void finish()
{
    printf("program hacked!\n"):
}


int main()
{
      if(test_pw()) printf("Fail!\n");
      else finish();
}
