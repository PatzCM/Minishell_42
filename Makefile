# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afogonca <afogonca@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/17 20:41:21 by afogonca          #+#    #+#              #
#    Updated: 2025/01/29 10:28:18 by afogonca         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

define HEADER

 		 	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⣀⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡴⠦⣤⣴⡟⠉⠉⡗⠚⡇⠀⠈⡷⢤⠖⠒⠲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⢀⣀⡇⠀⠀⢸⠀⡇⠀⠀⠇⠀⡇⠀⠀⡇⢸⠀⠀⢠⠋⡝⠉⠓⢦⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⢠⠊⠁⢣⢰⠀⠀⠈⡆⢳⠀⠀⠀⠀⡇⠀⢸⠀⡇⠀⠀⡜⢰⠃⠀⠀⡜⢦⢤⣀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⡠⢴⠻⡀⠀⠈⡎⡇⠀⠀⢃⢸⠀⠀⢸⠀⡇⠀⢸⢀⡇⠀⢠⠃⡎⠀⠀⡼⢡⠃⠀⠙⡆⠀⠀⠀⠀
 		 	⠀⠀⢸⠁⠀⢣⢱⡀⠀⢸⣸⡀⠀⢸⠈⡄⠀⢸⠀⡇⠀⠘⢸⠀⠀⡸⢰⠁⠀⢰⢡⠏⠀⠀⡜⡿⢤⡀⠀⠀
 		 	⠀⣠⠞⣷⡄⠀⢣⢣⠀⠀⢧⢇⠀⠈⡆⡇⠀⢸⠀⡇⠀⡇⡼⠀⢀⠇⡏⠀⢠⢇⠎⠀⢀⡜⡜⠁⠀⢳⠀⠀
 		 	⢸⡁⠀⠈⢻⣦⠀⢫⢧⠀⠘⡾⡄⠀⣇⢡⠀⢸⠀⡇⠀⡇⡇⠀⣸⢸⠀⢀⠏⡜⠀⢀⢎⠞⠀⢀⡴⡻⡄⠀
 		 	⣰⠻⣆⠀⠀⠻⣷⡀⢻⣇⠀⢹⢧⠀⢸⢸⠀⢸⠀⡇⢠⢿⠃⠀⡇⡇⠀⡜⡾⠀⢠⢾⠎⠀⡰⢫⠞⠀⡟⠀
 		 	⢹⣅⠙⢷⣄⠀⠙⣷⡀⢻⡄⠈⣿⡄⠘⡞⡆⢸⠀⡇⢸⢸⠀⢸⣸⠀⡸⡽⠁⢠⣯⠋⣠⣾⡖⢁⡠⠚⣿⡄
 		 	⠘⣏⠳⣄⠙⣦⡀⠘⢧⠀⢻⡄⠸⣧⠀⠇⡇⢸⠀⡇⢸⡌⠀⣇⠇⢰⣱⠁⣠⡻⢃⡴⡷⢋⡴⢋⡤⣺⠇⠀
 		 	⠀⢹⡕⢄⠑⢌⠛⢦⠈⢣⡀⢻⡀⢳⠀⢸⢳⢸⠀⡇⣎⡇⢸⠽⢠⠇⠁⣰⡿⢡⣾⢞⣴⣯⡔⣫⢴⠟⠀⠀
 		 	⠀⠀⠙⢦⣝⢦⡑⢄⠳⣌⠳⡈⢧⠈⡆⠸⣼⠸⡀⡇⡏⠁⡏⢀⠎⠀⡰⠉⡱⠋⡡⣫⣞⣽⣋⣴⠟⠀⠀⠀
 		 	⠀⠀⠀⠀⠉⠻⢿⣮⡳⣌⢦⡱⡌⣆⢸⠀⡟⡆⡇⡇⡇⢸⠁⡜⠀⡼⠁⡜⠁⣪⠞⣿⡵⠟⠉⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠙⡾⣾⣷⣵⡜⡜⡄⠇⢣⡇⡇⢳⠁⡎⠀⠀⡼⢁⠞⠠⢾⡵⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠀⣷⠈⠛⢿⣾⣾⣾⠘⠈⠁⠇⠀⠀⠁⠀⠾⠁⢀⣤⠞⢫⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⣄⠀⠙⠿⣟⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠛⣡⡴⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠦⠬⠷⢄⡀⠀⠀⠀⣠⠴⠟⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠒⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 		 	
 		 	
 	 	___  ___ __ __  __ __  __  __  __  ____ __    __   
 	 	||\\\\//|| || ||\\ || || (( \\ ||  || ||    ||    ||   
 	 	|| \/ || || ||\\\\|| ||  \\\\  ||==|| ||==  ||    ||   
 	 	||    || || || \|| || \\_)) ||  || ||___ ||__| ||__|
                                                 

endef
export HEADER

# Colors
RESET = \033[0m
BOLD = \033[1m
GREEN = \033[32m
BLUE = \033[34m
CYAN = \033[36m
YELLOW = \033[33m
RED = \033[31m

# Symbols
CHECK = \033[32m✔\033[0m
CROSS = \033[31m✖\033[0m
INFO = \033[36mℹ\033[0m

NAME = minishell
LIBS = libs/libft/libft.a 
CFLAGS = -Wall -Wextra -Werror -g
CC = cc
RM = rm -f


OBJS = $(SRCS:.c=.o)

EXECUTER = srcs/ft_executer/ft_pipes.c \
		   srcs/ft_executer/ft_run_cmds.c \
		   srcs/ft_executer/ft_error_exec.c \
		   srcs/ft_executer/ft_redirects_exec.c \
		   srcs/ft_executer/ft_redirects_exec_ne.c \
		   srcs/ft_executer/ft_run_single_builtins.c \
		   srcs/ft_executer/ft_executer_utils.c

BIN_TOKENS = srcs/ft_bin_tokens/ft_bin_tokens.c \
			srcs/ft_bin_tokens/ft_update_bin_tokens.c \
			srcs/ft_bin_tokens/ft_bin_tokens_pipes.c

SIGNALS = srcs/ft_signals/ft_signals.c

BUILTINS = srcs/ft_builtins/ft_echo.c \
		   srcs/ft_builtins/ft_exit.c \
		   srcs/ft_builtins/ft_pwd.c \
		   srcs/ft_builtins/ft_cd.c \
		   srcs/ft_builtins/ft_export.c \
		   srcs/ft_builtins/ft_export_append.c \
		   srcs/ft_builtins/ft_export_utils.c \
		   srcs/ft_builtins/ft_env.c \
		   srcs/ft_builtins/ft_cd_utils.c \
		   srcs/ft_builtins/ft_unset.c \
		   srcs/ft_builtins/ft_special_putstr.c


HEREDOC = srcs/ft_redirects/ft_heredoc/ft_heredoc.c \
		  srcs/ft_redirects/ft_heredoc/ft_actual_heredoc.c \
		  srcs/ft_redirects/ft_heredoc/ft_pseudo_heredoc.c

REDIRS = 	srcs/ft_redirects/ft_redirects.c \
			srcs/ft_redirects/ft_redirects_utils.c \
			srcs/ft_redirects/ft_redir_short_out_single.c \
			srcs/ft_redirects/ft_redir_short_out_double.c \
			srcs/ft_redirects/ft_redir_short_out.c \
			srcs/ft_redirects/ft_redir_short_in_single.c \
			$(HEREDOC)

SYNTAX = srcs/ft_syntax/ft_syntax_tokens.c \
		 srcs/ft_syntax/ft_syntax_bonus.c

EXPANDER = srcs/ft_expander/ft_expander.c \
		srcs/ft_expander/ft_expander2.c \
		srcs/ft_expander/ft_expander_replace.c \
		srcs/ft_expander/ft_expander_utils.c

RMV_QUOTES = srcs/ft_rmv_quotes/ft_rmv_quotes.c

DATA_INIT = srcs/ft_data_init/ft_data_init.c \
			srcs/ft_data_init/ft_data_init2.c \
			srcs/ft_data_init/ft_getenv.c \
			srcs/ft_data_init/ft_get_prompt.c

FREE = srcs/ft_free/ft_free.c

WILDCARDS = srcs/ft_wildcards/ft_wildcards.c \
			srcs/ft_wildcards/ft_wildcards_end.c \
			srcs/ft_wildcards/ft_wildcards_mid.c \
			srcs/ft_wildcards/ft_wildcards_begin.c \
			srcs/ft_wildcards/ft_wildcards_utils.c

TOKENS = srcs/ft_tokens/ft_split_ms.c \
		srcs/ft_tokens/ft_tokens.c

SRCS =	srcs/main.c srcs/main_utils.c srcs/main_utils2.c \
		$(WILDCARDS) $(DATA_INIT) $(FREE) $(TOKENS) \
		$(BUILTINS) $(REDIRS) $(SIGNALS) $(RMV_QUOTES) \
		$(BIN_TOKENS) $(EXECUTER) $(SYNTAX) $(EXPANDER)

VAL_RULES = --leak-check=full --show-leak-kinds=all --suppressions=readline.supp
#--trace-children=yes
all: deps $(NAME)

%.o: %.c
	@clear
	@echo "$(INFO) $(YELLOW)Compiling $<...$(RESET)"
	@echo "$(CHECK) $(GREEN)Done!$(RESET)"
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "$(CYAN) $$HEADER $(RESET)"

valgrind: all
	@echo > readline.supp "{\n\
	leak readline\n\
    Memcheck:Leak\n\
    ...\n\
    fun:readline\n\
}\n\
{\n\
    leak add_history\n\
    Memcheck:Leak\n\
    ...\n\
    fun:add_history\n\
}"
	valgrind $(VAL_RULES) ./$(NAME)

deps:
	@echo "$(INFO) $(YELLOW)Compiling Libft $<...$(RESET)"
	@make -C libs/libft/ --no-print-directory
	@echo "$(CHECK) $(GREEN)Done!$(RESET)"


# Compilation rule
$(NAME): $(OBJS)
	@echo "$(INFO) $(CYAN)Linking $(NAME)...$(RESET)"
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJS) $(LIBS) -lreadline
	@echo "$(CHECK) $(GREEN)Build complete!$(RESET)"
	
# $(NAME): $(OBJS)
# 	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $(NAME) -lreadline

clean:
	@echo "$(INFO) $(RED)Cleaning object files...$(RESET)"
	@$(RM) $(OBJS)
	@if [ -d libs/libft ]; then \
		$(MAKE) -C libs/libft/ clean --no-print-directory; fi;
	@$(RM) readline.supp
	@echo "$(CHECK) $(GREEN)Cleanup completed!$(RESET)"

fclean: clean
	@echo "$(INFO) $(RED)Cleaning $(NAME)...$(RESET)"
	@$(RM) $(NAME)
	@if [ -d libs/libft ]; then \
		$(MAKE) -C libs/libft fclean --no-print-directory; fi;
	@echo "$(CHECK) $(GREEN)Executable done!$(RESET)"

re: fclean all

.PHONY: all clean fclean re deps valgrind
