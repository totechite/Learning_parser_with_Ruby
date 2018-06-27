class Lexer

  attr_accessor :position
  attr_reader :text, :char

  def initialize text
    @EOF = -1.to_c
    @EOF_TYPE = 1

    @text = text.readlines.join.freeze
    @position = 0
    @char = @text.chars[@position]
  end

  # setter
  def char
    @char = @text.chars[@position]
  end

  def consume
    @position += 1
    self.char
  end

  def match x
    if @char == x
      self.consume
    else
      raise RuntimeError, "expecting" + x + "; found" + c
    end
  end

  def next_token
  end

  def tokenNames
  end
end