NAME    =   libasm.a
OS = $(shell uname)
FLAGS   =   -Wall -Wextra -Werror -no-pie 
ifeq ($(OS),Darwin)
FLAGS_ASM = -fmacho64
DIR = srcs_mac
else
FLAGS_ASM = -felf64
DIR = srcs_linux
endif
SRCS = $(DIR)/ft_strlen.s\
	   $(DIR)/ft_strcpy.s\
	   $(DIR)/ft_strcmp.s\
	   $(DIR)/ft_write.s\
	   $(DIR)/ft_read.s\
	   $(DIR)/ft_strdup.s
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
