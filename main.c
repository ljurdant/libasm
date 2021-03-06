
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
	int		fd3;

	str_long = "Tu trouves cette chaine longue toi? Plutot oui. Je pense qu'elle pourrait etre un peut plus longue quand meme. Carrement? Oui tout a fait.";
	str = "";
	fd1 = open("./test1.txt", O_RDONLY);
	fd2 = open("./test2.txt", O_RDONLY);
	fd3 = open("./test.txt", O_RDONLY);
	errno = 0;
	
	printf("ft_strlen_long = %zu\n", ft_strlen(str_long));
	printf("strlen_long = %zu\n\n", strlen(str_long));
	printf("ft_strlen = %zu\n", ft_strlen(str));
	printf("strlen = %zu\n\n", strlen(str));

	printf("strcpy = |%s|\n", strcpy(dest, str_long));
	printf("ft_strcpy = |%s|\n", ft_strcpy(dest, str_long));
	printf("strcpy = |%s|\n", strcpy(dest, str));
	printf("ft_strcpy = |%s|\n\n", ft_strcpy(dest, str));

	printf("strcmp = %d\n", strcmp("a", "abc"));
	printf("ft_strcmp = %d\n\n", ft_strcmp("a", "abc"));
	printf("strcmp = %d\n", strcmp(str, str_long));
	printf("ft_strcmp = %d\n\n", ft_strcmp(str, str_long));

	ft_write(1, str_long, 138);
	printf(" -- write = %zd\n", write(1, str_long, ft_strlen(str_long)));
	printf(" -- ft_write = %zd\n", ft_write(1, str_long, ft_strlen(str_long)));
	printf(" -- write = %zd\t\t", write(fd3, str_long, ft_strlen(str_long)));
	printf("errno = %d\n", errno);
	errno = 0;
	printf(" -- ft_write = %zd\t", ft_write(fd3, str_long, ft_strlen(str_long)));
	printf("errno = %d\n", errno);

	printf("ft_strdup = |%s|\n", ft_strdup(str_long));
	printf("strdup = |%s|\n", strdup(str_long));
	printf("ft_strdup = |%s|\n", ft_strdup(str));
	printf("strdup = |%s|\n\n", strdup(str));

	printf("read = %zd\n", read(fd2, buff2, 138));
	printf("ft_read = %zd\n", ft_read(fd1, buff1, 138));
	ft_read(fd1, buff1, 138);
	errno = 0;
	printf("read = %zd\t\t", read(fd3, buff2, 138));
	printf("errno = %d\n", errno);
	errno = 0;
	printf("ft_read = %zd\t\t", ft_read(fd3, buff1, 138));
	ft_read(fd3, buff1, 138);
	printf("errno = %d\n", errno);
}
