module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?

    messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg, class: 'item') }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation" class="ui error message">
      <!-- <div class="header">#{sentence}</div> -->
      <div class="ui list">#{messages}</div>
    </div>
    HTML

    html.html_safe
  end

  def form_class
    "ui large form #{ 'error' if devise_error_messages? }"
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end