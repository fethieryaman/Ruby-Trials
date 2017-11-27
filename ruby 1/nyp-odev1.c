#include <stdio.h>
#include <stdlib.h>

struct point {
        int x;
        int y;
};
 
struct point *
point_create(int x, int y)
{		
        struct point *create = (struct point * )malloc(sizeof(struct point));

        create->x = x;
        create->y = y;

        return create;
}

int
point_isright(const struct point *create, const struct point *that)
{

        return create->x > that->x; 
}

int
point_isleft(const struct point *create, const struct point *that)
{

        return create->x < that->x;
}

int
point_isabove(const struct point *create, const struct point *that)
{

        return create->y > that->y;
}

int
point_isbelow(const struct point *create, const struct point *that)
{

        return create->y < that->y;
}

int
point_isequal(const struct point *create, const struct point *that)
{

        return create->x == that->x && create->y == that->y;
}

int
point_issquare(const struct point *create, const struct point *that)
{

        return ((create->x - that->x == create->y - that->y) || (create->x - that->x == -(create->y - that->y))) && (create->x != that->x && create->y != that->y);
}


void
point_move(struct point *create, int x, int y)
{
        create->x += x;
        create->y += y;
}

void
point_print(const struct point *create)
{
        printf("(%d,%d)", create->x, create->y);
}

void
point_destroy(struct point *create)
{
        free(create);
}

int
main(void)
{
		int a,b,c,d;
		printf("Birinci noktanin koordinatlarini giriniz	:\n");
		scanf("%d%d",&a,&b);
		printf("Ýkinci noktanin koordinatlarini giriniz		:\n");
        scanf("%d%d",&c,&d);
		struct point *p = point_create(a, b);
        struct point *q = point_create(c, d);

        /*
		point_print(p), printf(" noktasi ");
        point_print(q), printf(" noktasi");
    	printf("%s.\n", point_isequal(p, q) ? "na esit" : "na esit degil");
        
		point_print(p), printf(" noktasi ");
        point_print(q), printf(" noktasi");
		printf("%s.\n", point_isleft(p, q) ? "nin solunda" : "nin solunda degil");
		
		point_print(p), printf(" noktasi ");
        point_print(q), printf(" noktasi");
        printf("%s.\n", point_isright(p, q) ? "nin saginda" : "nin saginda degil");
		
		point_print(p), printf(" noktasi ");
        point_print(q), printf(" noktasi");
        printf("%s.\n", point_isabove(p, q) ? "nin ustunde" : "nin ustunde degil");
        
		point_print(p), printf(" noktasi ");
        point_print(q), printf(" noktasi");
        printf("%s.\n", point_isbelow(p, q) ? "nin altinda" : "nin altinda degil");
		*/
        
        point_print(p), printf(" NOKTASI ");
        point_print(q), printf(" ILE NOKTASI");
        printf("%s.\n", point_issquare(p, q) ? " KARE BELIRTIR." : " KARE BELIRTMEZ.");

        point_destroy(p);
        point_destroy(q);

        return 0;
}
