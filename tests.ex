defmodule Tests do
  def test do
    board = [
      [false, false, false, false, false],
      [true, false, true, false, false],
      [false, false, false, false, false],
      [false, true, false, false, false],
      [false, false, true, true, false]
    ]

    IO.inspect(board, label: "BOARD")

    board2 = [
      [true, true, true],
      [true, false, true],
      [true, true, true]
    ]

    tabuleiro = [
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"]
    ]

    IO.inspect(Enum.at(board, 0))
    IO.inspect(Minesweeper.get_arr(Enum.at(board, 0), 2))
    IO.inspect(Minesweeper.update_arr(Enum.at(board, 0), 2, 2))
    IO.inspect(Minesweeper.get_pos(board, 2, 4))
    IO.puts("is_mine/3")
    IO.inspect(Minesweeper.is_mine(board, 0, 1))
    IO.inspect(Minesweeper.is_mine(board, 1, 4))
    IO.puts("is_valid_pos/3")
    IO.inspect(Minesweeper.is_valid_pos(5, -2, 0))
    IO.inspect(Minesweeper.is_valid_pos(5, 0, 5))
    IO.inspect(Minesweeper.is_valid_pos(5, 2, 2))
    IO.puts("valid_moves/3")
    IO.inspect(Minesweeper.valid_moves(5, 3, 3))
    IO.inspect(Minesweeper.valid_moves(5, 0, 3))
    IO.inspect(Minesweeper.valid_moves(5, 4, 4))
    IO.puts("conta_minad_adj/3")
    IO.inspect(Minesweeper.conta_minas_adj(board, 3, 3))
    IO.inspect(Minesweeper.conta_minas_adj(board, 4, 4))
    IO.inspect(Minesweeper.conta_minas_adj(board, 1, 0))
    IO.inspect(Minesweeper.conta_minas_adj(board2, 1, 1))

    IO.puts("abre_posicao/4")
    IO.inspect(Minesweeper.abre_posicao(tabuleiro, board, 1, 0))
    IO.inspect(Minesweeper.abre_posicao(tabuleiro, board, 3, 4))
    IO.inspect(Minesweeper.abre_posicao(tabuleiro, board, 3, 2))

    IO.puts("abre_jogada/4")
    IO.inspect(a1 = Minesweeper.abre_jogada(0, 0, board, tabuleiro))
    IO.inspect(a2 = Minesweeper.abre_jogada(3, 0, board, a1))
    IO.inspect(a3 = Minesweeper.abre_jogada(0, 4, board, a2))
    IO.inspect(Minesweeper.abre_jogada(4, 2, board, a3))

    IO.puts("abre_tabuleiro/2")
    IO.inspect(Minesweeper.abre_tabuleiro(board, tabuleiro))

    IO.puts("board_to_string/1")
    IO.puts(Minesweeper.board_to_string(tabuleiro))

    IO.puts("gera_lista/2")
    IO.inspect(Minesweeper.gera_lista(5, "hi"))
    IO.inspect(Minesweeper.gera_lista(3, true))
    IO.inspect(Minesweeper.gera_lista(0, 5))

    IO.puts("gera_tabuleiro/1")
    IO.inspect(Minesweeper.gera_tabuleiro(4))

    IO.puts("gera_mapa_de_minas/1")
    IO.inspect(Minesweeper.gera_mapa_de_minas(4))

    IO.puts("conta_fechadas/1")
    IO.inspect(Minesweeper.conta_fechadas(tabuleiro))

    IO.puts("conta_minas/1")
    IO.inspect(Minesweeper.conta_minas(board))

    IO.puts("end_game/2")
    IO.inspect(Minesweeper.end_game(board, tabuleiro))
  end
end

Tests.test()
