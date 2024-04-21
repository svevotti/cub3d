GNU = cc
FLAGS = -Wall -Wextra -Werror
CUB3D_FILES = test.c
CUB3D_OBJ = $(CUB3D_FILES:.c=.o)
NAME = test

LIBRARY_LIBFT = ./libft/libft.a
LIBRARY = ./minilibx_mac_cub3d/libmlx.a

all: $(NAME)


$(NAME): $(LIBRARY_LIBFT) $(LIBRARY)  $(CUB3D_OBJ)
#	$(GNU) -I . $(FLAGS) $(FRACTOL_OBJ) -o $(NAME) -L ./minilibx_mac_cub3d -lmlx -lXext -lX11
	$(GNU) $(FLAGS) $(CUB3D_OBJ) -L ./libft -lft -L ./minilibx_mac_cub3d -lmlx -framework OpenGL -framework AppKit -o $(NAME)

$(LIBRARY_LIBFT):
	cd ./libft && make
$(LIBRARY):
	cd ./minilibx_mac_cub3d && make

%.o: %.c
	 $(GNU) -c $^

clean:
	rm -f $(CUB3D_OBJ)
	cd libft && make fclean
	cd minilibx_mac_cub3d && make clean
fclean: clean
	rm -f $(NAME)
re: fclean all
.PHONY: clean fclean re all
