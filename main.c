
#include "libasm.h"

int	main(void)
{
	char	*str_long;
	char	*str;
	char	dest[139];
	char	buff1[139];
	char	buff2[139];
	int		fd1;
	int		fd2;

	str_long = "Tu trouves cette chaine longue toi? Plutot oui. Je pense qu'elle pourrait etre un peut plus longue quand meme. Carrement? Oui tout a fait.";
	str = "";
	
	printf("ft_strlen_long = %zu\n", ft_strlen(str_long));
	printf("strlen_long = %zu\n\n", strlen(str_long));
	printf("ft_strlen = %zu\n", ft_strlen(str));
	printf("strlen = %zu\n\n", strlen(str));

	printf("strcpy = |%s|\n", strcpy(dest, str_long));
	printf("ft_strcpy = |%s|\n", ft_strcpy(dest, str_long));
	printf("strcpy = |%s|\n", strcpy(dest, str));
	printf("ft_strcpy = |%s|\n\n", ft_strcpy(dest, str));

	printf("strcmp = %d\n", strcmp("a", "a"));
	printf("ft_strcmp = %d\n\n", ft_strcmp("a", "a"));

	printf(" -- write = %zd\n", write(1, str_long, ft_strlen(str_long)));
	printf(" -- ft_write = %zd\n\n", ft_write(1, str_long, ft_strlen(str_long)));

	printf("ft_strdup = |%s|\n", ft_strdup(str_long));
	printf("strdup = |%s|\n", strdup(str_long));
	printf("ft_strdup = |%s|\n", ft_strdup(str));
	printf("strdup = |%s|\n\n", strdup(str));

	fd1 = open("./test.txt", O_RDONLY);
	fd2 = open("./test.txt", O_RDONLY);
	printf("ft_read = %zd\t errno = %d\n", ft_read(fd1, buff1, 138), errno);
	printf("read = %zd\terrno = %d\n", read(fd2, buff2, 138), errno);
}
