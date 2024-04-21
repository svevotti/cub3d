#include <stdio.h>
#include "./minilibx_mac_cub3d/mlx.h"
#include "./Libft/libft.h"

int main(void)
{
	// char *str;
	// char **split_str;

	// str = "Hello world";
	// split_str = ft_split(str, ' ');
	// int i = 0;
	// while (i < 2)
	// {
	// 	printf("%s\n", split_str[i]);
	// 	i++;
	// }

	void *mlx_ptr;
	void *wid_ptr;

	mlx_ptr = mlx_init();
	wid_ptr = mlx_new_window(mlx_ptr, 300, 300, "test");
	mlx_loop(mlx_ptr);
}
