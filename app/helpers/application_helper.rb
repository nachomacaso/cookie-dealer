module ApplicationHelper
  def custombootstrapflash
    flashmessages = []
    flash.each do |type, message|
      type = type.to_sym
      type = :success if type == :notice
      type = :error if type == :alert
      text = "<script>toastr.#{type}('#{message}');</script>"
      flashmessages << text.htmlsafe if message
    end
    flashmessages.join("\n").html_safe
  end
end
