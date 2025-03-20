/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tokens2.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afogonca <afogonca@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/03/20 09:43:49 by afogonca          #+#    #+#             */
/*   Updated: 2025/03/20 09:44:00 by afogonca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_tokens.h"

int	ft_token_maker2(t_token *token, char **commands, int i)
{
	token->quotes = 0;
	if (ft_strchr(commands[i], '"') || ft_strchr(commands[i], '\''))
		token->quotes = 1;
	if (!commands[i + 1])
		return (1);
	return (0);
}
