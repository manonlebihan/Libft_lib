# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mle-biha <mle-biha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/24 16:02:36 by mle-biha          #+#    #+#              #
#    Updated: 2023/01/24 17:19:54 by mle-biha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# --------------------------- Sources --------------------------- #

# Files
LIBFT			= cd libft && make
LIB				= libft/libft.a
PRINTF			= cd ft_printf && make
LIB_PRINTF		= ft_printf/libftprintf.a
GNL				= cd get_next_line && make
LIB_GNL			= get_next_line/libgnl.a

# Sources and objects
LIBFT_OBJ		= $(LIBFT)
LIB_PRINTF_OBJ	= cd ft_printf/*.o
LIB_GNL_OBJ		=

# --------------------------- Constant --------------------------- #

NAME			= libft.a
AR				= ar
ARFLAGS			= -cvq

# --------------------------- Rules --------------------------- #

$(NAME):
	$(AR) $(ARFLAGS) $(NAME) $(LIB) $(LIB_PRINTF) $(LIB_GNL)
