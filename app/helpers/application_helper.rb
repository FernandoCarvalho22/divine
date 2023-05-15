module ApplicationHelper
  def calculo_investimentos(report_day)
    report_day.cake_invest.to_i + report_day.bread_invest.to_i + report_day.expense.to_i
  end

  def calculo_entradas(report_day)
    report_day.card.to_i + report_day.money.to_i
  end

  def calculo_lucro(report_day)
    report_day.card.to_i + report_day.money.to_i - report_day.cake_invest.to_i - report_day.bread_invest.to_i - report_day.expense.to_i
  end

  def calculo_lucro_month(report_month)
    report_month.entries.to_i - report_month.investing.to_i
  end

  #botões
  def link_btn_delete(object)
    link_to 'Deletar', object, :class => "button btn btn-danger btn-sm", data: { turbo_method: :delete, turbo_confirm: "Tem certeza que deseja excluir?" }
  end

  def link_btn_edit(object)
    link_to(content_tag(:span, "Editar", class: "glyphicon glyphicon-trash "), object, method: :edit, data: { confirm: t('messages.are_you_sure') }, class: "btn btn-light btn-sm", title: "Editar")
  end

  def link_btn_show(object)
    link_to(content_tag(:span, "Ver", class: "glyphicon glyphicon-trash "), object, method: :show, data: { confirm: t('messages.are_you_sure') }, class: "btn btn-light btn-sm", title: "Mostrar")
  end

  def flash_message
   messages = ""
   [:notice, :info, :warning, :error].each {|type|
     if flash[type]
       messages += "<div class=\"base-alert #{type}\" role='alert'>#{flash[type]}</div>"
     end
   }
   messages.html_safe
  end
end
