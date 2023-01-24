# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mle-biha <mle-biha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:27:10 by mle-biha          #+#    #+#              #
#    Updated: 2023/01/24 16:33:56 by mle-biha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = libgnl.a
CC      = gcc
CFLAGS  = -Wall -Wextra -Werror -I. -g
AR      = ar
ARFLAGS = -cvq
SRC     = get_next_line.c \
			get_next_line_utils.c \

OBJ     = $(SRC:.c=.o)

BONUS_SRC = get_next_line_bonus.c \
			get_next_line_utils_bonus.c \

BONUS_OBJ = $(BONUS_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)

%.o: %.c %.h
	$(CC) $(CFLAGS) $< -c -o $@

bonus: $(NAME) ${BONUS_OBJ}
	${AR} $(ARFLAGS) $(NAME) $(BONUS_OBJ)

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY : clean fclean re all