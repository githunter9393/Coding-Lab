#include <stdio.h>
#include <stdlib.h>

int test_pw()
{    
       char password[10];
       printf("password address: %p\n", password);
       printf("enter password: \n");
       gets(password);
       return 1;
}


void win()
{
    printf("You Win!\n"):
}


int main()
{
      if(test_pw()) printf("Fail!\n");
      else win();
}