/*
** EPITECH PROJECT, 2024
** chocolatine_test
** File description:
** test_my_putstr.c
*/

#include "my.h"
#include <criterion/criterion.h>
#include <criterion/redirect.h>

Test(my_putstr, should_print_string, .init = cr_redirect_stdout)
{
    my_putstr("test");
    cr_assert_stdout_eq_str("test");
}
