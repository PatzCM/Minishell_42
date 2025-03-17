/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_redirects_utils.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afogonca <afogonca@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/03/17 16:02:56 by afogonca          #+#    #+#             */
/*   Updated: 2025/03/17 16:03:23 by afogonca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_redirects.h"

void	ft_free_token(t_token *tokens)
{
	t_token	*tmp;	

	tmp = tokens->next;
	if (tokens->content)
		free(tokens->content);
	free(tokens);
	if (tmp->content)
		free(tmp->content);
	free(tmp);
}
