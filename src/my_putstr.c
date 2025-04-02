/*
** EPITECH PROJECT, 2024
** chocolatine_test
** File description:
** my_putstr.c
*/

#include "my.h"
#include <unistd.h>

void my_putstr(char *str)
{
    while (*str) {
        write(1, str, 1);
        str++;
    }
}
