class HelloController < ApplicationController
  def index
    render plain: "こんにちは、世界！\n私の名前は木村一翔です。"
  end

  def view
    @msg = "こんにちは、世界！"
  end

  # def list
  #   @books = Book.all
  # end
end
