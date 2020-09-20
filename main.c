
#include "libasm.h"

int	main(void)
{
	char	*str_long;
	char	*str;
	char	dest[139];

	str_long = "Tu trouves cette chaine longue toi? Plutot oui. Je pense qu'elle pourrait etre un peut plus longue quand meme. Carrement? Oui tout a fait.";
	str = "";
	
	printf("ft_strlen_long = %zu\n", ft_strlen(str_long));
	printf("strlen_long = %zu\n", strlen(str_long));
	printf("ft_strlen = %zu\n", ft_strlen(str));
	printf("strlen = %zu\n", strlen(str));

	printf("strcpy = |%s|\n", strcpy(dest, str_long));
	printf("ft_strcpy = |%s|\n", ft_strcpy(dest, str_long));
	printf("strcpy = |%s|\n", strcpy(dest, str));
	printf("ft_strcpy = |%s|\n", ft_strcpy(dest, str));

	printf("strcmp = %d\n", strcmp(str, str_long));
	printf("ft_strcmp = %d\n", ft_strcmp(str, str_long));
}
