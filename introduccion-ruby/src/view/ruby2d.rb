require 'ruby2d'

module View
  class Ruby2dView
    def initialize
      @pixel_size = 50
    end

    def render(state)
      extend Ruby2D::DSL
      set(
        title: 'snake',
        width: @pixel_size * state.grid.cols,
        height: @pixel_size * state.grid.rows
      )
      render_snake(state)
      render_food(state)
      show
    end

    private
    def render_food(state)
      extend Ruby2D::DSL
      food = state.food
      Square.new(
        x: food.col * @pixel_size,
        y: food.row * @pixel_size,
        size: @pixel_size,
        color: 'yellow',
      )
    end

    private
    def render_snake(state)
      extend Ruby2D::DSL
      snake = state.snake
      snake.positions.each do |position|  
        Square.new(
          x: position.col * @pixel_size,
          y: position.row * @pixel_size,
          size: @pixel_size,
          color: 'green',
        )
      end
    end
  end
end
