/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_data_init2.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afogonca <afogonca@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/03/19 11:44:16 by afogonca          #+#    #+#             */
/*   Updated: 2025/03/19 11:44:41 by afogonca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_data_init.h"

void	ft_data_init2(t_data *data)
{
	data->tokens = NULL;
	data->tokens_start = NULL;
	data->tokens_end = NULL;
	data->bin_tokens = NULL;
	data->command = NULL;
	data->args = NULL;
	data->prompt = NULL;
	data->envp = NULL;
	data->user = NULL;
	data->hostname = NULL;
	data->path = NULL;
	data->heredoc_path = NULL;
}

void	ft_shell_lvl(t_data *data)
{
	char	*idk;
	t_envp	*tmp;

	tmp = data->envp;
	while (tmp)
	{
		if (ft_strcmp(tmp->key, "SHLVL") == 0)
		{
			idk = ft_strdup(tmp->value);
			free(tmp->value);
			tmp->value = ft_itoa(ft_atoi(idk) + 1);
			free(idk);
			break ;
		}
		if (!tmp->next)
			break ;
		tmp = tmp->next;
	}
	if (data->envp && !tmp->next && ft_strcmp(tmp->key, "SHLVL") != 0)
		tmp->next = ft_new_env_node(data, "SHLVL=1");
	if (!data->envp)
		data->envp = ft_new_env_node(data, "SHLVL=1");
}
