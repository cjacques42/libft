/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjacques <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/26 17:15:20 by cjacques          #+#    #+#             */
/*   Updated: 2016/03/16 11:45:24 by cjacques         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

static size_t	count_words(char const *s, char c)
{
	unsigned int	words;
	size_t			i;

	words = 0;
	i = 0;
	while (s[i])
	{
		while (s[i] && s[i] != c)
			i++;
		if (s[i])
			i++;
		words++;
	}
	return (words);
}

static char		*strcomplete(const char *s, size_t *j, size_t *len, int c)
{
	(*j)++;
	while (s[*j] != c && s[*j])
	{
		(*j)++;
		(*len)++;
	}
	(*j) = (*j) - (*len);
	return (ft_strsub(s, *j, *len));
}

char			**ft_strsplit(char const *s, char c)
{
	char			**ptr;
	size_t			i;
	size_t			len;
	size_t			j;
	size_t			words;

	i = 0;
	j = 0;
	if (s == NULL)
		return (NULL);
	words = count_words(s, c);
	ptr = (char **)malloc(sizeof(*ptr) * (words + 1));
	if (ptr == NULL)
		return (NULL);
	while (i < words)
	{
		len = 0;
		ptr[i] = strcomplete(s, &j, &len, c);
		j = j + len;
		i++;
	}
	ptr[i] = NULL;
	return (ptr);
}
