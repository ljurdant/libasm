NAME    =   libasm.a
FLAGS   =   -Wall -Wextra -Werror
FLAGS_ASM = -fmacho64
SRCS = ft_strlen.s\
	   ft_strcpy.s\
	   ft_strcmp.s\
	   ft_write.s\
	   ft_read.s\
	   ft_strdup.s
OBJS    =   $(SRCS:.s=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

test: $(OBJS) $(NAME)
	gcc $(FLAGS) main.c $(NAME) -o test

%.o: %.s
	nasm $(FLAGS_ASM) $<

clean   :
	rm -rf $(OBJS)

fclean  : clean
	rm -rf $(NAME)
	rm -rf test

re      : fclean all
re_test      : fclean test

.PHONY  : all clean fclean re
