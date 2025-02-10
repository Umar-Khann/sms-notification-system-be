class SendSmsJob < ApplicationJob
  queue_as :default

  def perform(user_phone, message)
    Rails.logger.info "📨 SMS service successfully initiated for #{user_phone}"

    TwilioSmsService.new(user_phone, message).call
  end
end
