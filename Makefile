# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cjacques <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/27 10:02:34 by cjacques          #+#    #+#              #
#    Updated: 2016/01/14 09:55:16 by cjacques         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_NAME =	ft_memset.c				\
			ft_bzero.c				\
			ft_memcpy.c				\
			ft_memccpy.c			\
			ft_memmove.c			\
			ft_memchr.c				\
			ft_memcmp.c				\
			ft_strlen.c				\
			ft_strdup.c				\
			ft_strcpy.c				\
			ft_strncpy.c			\
			ft_strcat.c				\
			ft_strncat.c			\
			ft_strlcat.c			\
			ft_strchr.c				\
			ft_strrchr.c			\
			ft_strstr.c				\
			ft_strnstr.c			\
			ft_strcmp.c				\
			ft_strncmp.c			\
			ft_atoi.c				\
			ft_isalpha.c			\
			ft_isdigit.c			\
			ft_isalnum.c			\
			ft_isascii.c			\
			ft_isprint.c			\
			ft_toupper.c			\
			ft_tolower.c			\
			ft_memalloc.c			\
			ft_memdel.c				\
			ft_strnew.c				\
			ft_strdel.c				\
			ft_strclr.c				\
			ft_striter.c			\
			ft_striteri.c			\
			ft_strmap.c				\
			ft_strmapi.c			\
			ft_strequ.c				\
			ft_strnequ.c			\
			ft_strsub.c				\
			ft_strjoin.c			\
			ft_strtrim.c			\
			ft_strsplit.c			\
			ft_itoa.c				\
			ft_putchar.c			\
			ft_putstr.c				\
			ft_putendl.c			\
			ft_putnbr.c				\
			ft_putchar_fd.c			\
			ft_putstr_fd.c			\
			ft_putendl_fd.c			\
			ft_putnbr_fd.c			\
			ft_lstnew.c				\
			ft_lstdelone.c			\
			ft_lstdel.c				\
			ft_lstadd.c				\
			ft_lstiter.c			\
			ft_lstmap.c				\
			ft_putwchar.c			\
			ft_putwchar_fd.c		\
			ft_putwstr.c			\
			ft_putwstr_fd.c			\
			ft_wstrlen.c

OBJ_NAME = $(SRC_NAME:.c=.o)

all: $(NAME)

$(NAME):
	gcc -c -Wall -Werror -Wextra $(SRC_NAME) -I includes
	ar rc $(NAME) $(OBJ_NAME)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ_NAME)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

norme:
	norminette $(SRC_NAME)
	norminette includes/libft.h
