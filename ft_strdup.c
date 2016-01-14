/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjacques <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/25 10:16:04 by cjacques          #+#    #+#             */
/*   Updated: 2015/11/26 11:56:16 by cjacques         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

char	*ft_strdup(const char *s1)
{
	size_t	length;
	char	*str;

	length = ft_strlen(s1);
	str = (char *)malloc(sizeof(str) * (length + 1));
	if (str == NULL)
		return (NULL);
	str = ft_strcpy(str, s1);
	return (str);
}
