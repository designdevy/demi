phoneScreen = new Layer
  width: 1440
  height: 2960
  x: Align.center()
  y: Align.center()
  backgroundColor: "transparent"

phoneCanvas = new Layer
  parent: phoneScreen
  width: 1440 - 10
  height: 2960 - 10
  x: Align.center()
  y: Align.center()

class Border extends Layer
  constructor: (options = {}) ->
    super _.defaults options,
        backgroundColor: "transparent"
    @size = @parent.size

    @left = new Layer
      parent: @
      x: Align.left()
      y: Align.center()
      width: 10
      height: @height
      backgroundColor: "red"
    
    @right = new Layer
      parent: @
      x: Align.right()
      y: Align.center()
      width: 10
      height: @height
      backgroundColor: "red"

    @top = new Layer
      parent: @
      x: Align.center()
      y: Align.top()
      width: @width
      height: 10
      backgroundColor: "red"

    @bottom = new Layer
      parent: @
      x: Align.center()
      y: Align.bottom()
      width: @width
      height: 10
      backgroundColor: "red"

canvasBorder = new Border
  parent: phoneScreen