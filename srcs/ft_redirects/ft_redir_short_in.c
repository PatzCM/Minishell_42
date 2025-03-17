/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_redir_short_in.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afogonca <afogonca@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/03/17 12:12:29 by afogonca          #+#    #+#             */
/*   Updated: 2025/03/17 12:13:16 by afogonca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_redirects.h"

t_token	*ft_take_ri_out(t_token *head, t_token *tokens, int i)
{
	t_token	*tmp;

	if (i == -1)
		return (tokens);
	tokens = head;
	while (tokens && tokens->type != PIPE)
	{
		tmp = tokens->next;
		if (tokens->next && (tokens->next->type == D_REDIRECT_IN
				|| tokens->next->type == REDIRECT_IN)
			&& tokens->next->next && i == 1)
		{
			tokens->next = tokens->next->next->next;
			ft_free_token(tmp);
			break ;
		}
		else if (tokens && (tokens->next->type == D_REDIRECT_IN
				|| tokens->next->type == REDIRECT_IN)
			&& tokens->next->next && !(++i))
			tokens = tokens->next;
		else
			tokens = tokens->next;
	}
	return (head);
}
