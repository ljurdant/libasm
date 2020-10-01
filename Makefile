NAME    =   libasm.a
FLAGS   =   -Wall -Wextra -Werror
FLAGS_ASM = -fmacho64
SRCS = srcs_mac/ft_strlen.s\
	   srcs_mac/ft_strcpy.s\
	   srcs_mac/ft_strcmp.s\
	   srcs_mac/ft_write.s\
	   srcs_mac/ft_read.s\
	   srcs_mac/ft_strdup.s
OBJS    =   $(SRCS:.s=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

test: $(OBJS) $(NAME) main.o
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
