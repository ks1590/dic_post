class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_notice_mail(notice_members)
    @notice_members = notice_members
    mail to: @notice_members.map(&:email), subject: I18n.t('views.messages.success_agenda_destroy')
  end
end