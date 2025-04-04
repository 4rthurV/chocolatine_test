##
## EPITECH PROJECT, 2024
## chocolatine_test
## File description:
## Makefile
##

NAME    =   my_program

SRC     =   src/main.c \
            src/my_putstr.c

OBJ     =   $(SRC:.c=.o)

CFLAGS  =   -I./include -Wall -Wextra

TEST_FLAGS	=	-lcriterion --coverage

all:    $(NAME)

$(NAME):    $(OBJ)
	@gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

tests_run:
	@gcc -o unit_tests $(SRC) tests/test_my_putstr.c $(CFLAGS) $(TEST_FLAGS)
	@./unit_tests
