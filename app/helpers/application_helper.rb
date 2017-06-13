module ApplicationHelper
  def error_message(object, method, error_message)
    return if object.errors[method].empty?

    error_message
  end
end
