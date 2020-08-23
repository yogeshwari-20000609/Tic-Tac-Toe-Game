# Tic-Tac-Toe-Game
		Project Name: TIC TAC TOE Game

	It is GUI based project using GTK.
	It includes main.c and Makefile
	To run 
		1.make CPPFLAGS=$(pkg-config --cflags glib-2.0)
		2../tictactoe
RULES:	
	1.Game is between player and computer. 
	2.First move is made by player then after the one who will won the previous round make the move.
	3.Scores  of Computer and Player gets updated below the game board.
	
Functions used in code:
	1.void gtk_init_items()-initialize items
	2.void gtk_packing() -pack items
	3.void quit()-free memory and quit program
	4.void reset()-reset all buttons
	5.bool done()-check whether board finished
	6.void show_message(int)-show failure success tie message
	7.bool check()-check whether success or tie
	8.int mark(GtkWidget *button) -mark buttons if clicked
	9.void gtk_init_signals()-connect signals
