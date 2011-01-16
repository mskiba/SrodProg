#include <stdio.h>

int silnia(int n) {
	if(n == 0) return 1;
	else return n*silnia(n-1);
}

int c1(int n, int k) {
	return silnia(n)/(silnia(k)*silnia(n-k));
}

int c2(int n, int k) {
	if(k == 0 && n >= 0) return 1;
	else if (k == 1 && n >= 0) return n;
	else if (k > n/2) return c2(n, n-k);
	else return c2(n-1, k-1) + c2(n-1, k);
}

int main(void) {
	int x, n, k;

	printf("Co chcesz zrobić? Możliwości:\n");
	printf("1 - jeśli chcesz policzyć wartość dwumianu Newtona dwoma sposobami\n");
	printf("2 - jeśli chcesz porównać działanie funkcji\n");
	printf("Wybieram: ");
	scanf("%i", &x);

	switch(x) {
	  case 1:
		printf("Podaj n: ");
		scanf("%i", &n);
	
		printf("Podaj k: ");
		scanf("%i", &k);

		printf("c1(%i, %i) = %i\n", n, k, c1(n, k));
		printf("c2(%i, %i) = %i\n", n, k, c2(n, k));
    	break;
  	  case 2:
	    for (n=0; n<=20; n++) {
	        for (k=0; k<=n; k++) {
	            if (c1(n,k) == c2(n,k)) printf("%i == %i (n: %i, k: %i)\n", c1(n,k), c2(n,k), n, k);
	            else printf("%i != %i (n: %i, k: %i)\n", c1(n,k), c2(n,k), n, k);
            }
        }

		printf("\nWydajność:\n");
		printf("Funkcja c1 jest szybszym sposobem niż c2, winowajcą jest rekurencja w drugiej funkcji.\n\n");
		printf("Poprawność wyników:\n");
		printf("Funkcja silnia() dla argumentów większych niż 12 zwraca złe wartości stąd też funkcja c1 nie radzi sobie z dużymi n.\n");
		printf("Funkcja c2 natomiast działa poprawnie tylko dla n < 34\n\n");
    	break;
  	  default:
    	printf("Coś źle wpisałeś...\n");
    	break;
	}
}
