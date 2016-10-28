module ApplicationHelper
  def title(value = nil)
    @title = value if value
    @title ? "ControllerDemo - #{@title}" : "Controller Demo"
  end
end
