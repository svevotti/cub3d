#include "./minilibx_mac_cub3d/mlx.h"




int main(void)
{
	void *mlx_ptr;
	void *wid_ptr;

	mlx_ptr = mlx_init();
	wid_ptr = mlx_new_window(mlx_ptr, 300, 300, "test");
	mlx_loop(mlx_ptr);
}