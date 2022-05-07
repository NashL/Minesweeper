class Board < ApplicationRecord
  validates_presence_of :name, :email, :width, :height, :mines
  before_create :generate_serialize

  def generate_serialize
    board_service = BoardService.new(width, height, mines)
    board_service.generate_board
    self.serialize = JSON.dump(board_service.board)
  end

  def parsed_board
    JSON.parse(serialize)
  end
end
