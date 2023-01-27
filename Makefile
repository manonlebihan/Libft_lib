# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mle-biha <mle-biha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:02:36 by mle-biha          #+#    #+#              #
#    Updated: 2023/01/27 14:56:16 by mle-biha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# --------------------------- Constant --------------------------- #

NAME			= libft.a
CC				= gcc
CFLAGS			=-Wall -Wextra -Werror -I.
AR				= ar
ARFLAGS			= -cvq

# --------------------------- Sources --------------------------- #

GNL_DIR		= gnl
LIB_DIR		= libft
PRINTF_DIR	= ft_printf

GNL_SRC		= $(wildcard *.c)
LIB_SRC		= $(wildcard *.c)
PRINTF_SRC	= $(wildcard *.c)

SRC_GNL		= $(addprefix $(GNL_DIR)/, $(GNL_SRC))
SRC_LIB		= $(addprefix $(LIB_DIR)/, $(LIB_SRC))
SRC_PRINTF	= $(addprefix $(PRINTF_DIR)/, $(PRINTF_SRC))

OBJ_GNL		= $(SRC_GNL:.c=.o)
OBJ_LIB		= $(SRC_LIB:.c=.o)
OBJ_PRINTF	= $(SRC_PRINTF:.c=.o)

OBJS		= $(OBJ_GNL) $(OBJ_LIB) $(OBJ_PRINTF)

# --------------------------- Rules --------------------------- #

all: $(NAME)

%.o: %.c %.h
	$(CC) $(CFLAGS) -o $@ -c $<

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY : clean fclean re
