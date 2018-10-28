phoneCanvas = new Layer
  width: 1440 - 10
  height: 2960 - 10
  x: Align.center()
  y: Align.center()

canvasBorder = new Border

class Border extends Layer
  constructor: (options) ->
      super options

      @left = new Layer
        x: Align.left()
        y: 0
        width: 10
        height: phoneCanvas.height
      
      @right = new Layer
        x: Align.right()
        y: 0
        width: 10
        height: phoneCanvas.height

      @top = new Layer
        x: 0
        y: Align.top()
        width: phoneCanvas.width
        height: 10

      @bottom = new Layer
        x: 0
        y: Align.bottom()
        width: phoneCanvas.width
        height: 10