require "twilio-ruby"

class TwilioSmsService
  def initialize(to, message)
    @to = to
    @message = message
  end

  def call
    client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])

    client.messages.create(
      from: ENV["TWILIO_PHONE_NUMBER"],
      to: @to,
      body: @message
    )
    Rails.logger.info "✅ SMS sent successfully to #{@to}"
  rescue StandardError => e
    Rails.logger.error "❌ Failed to send SMS: #{e.message}"
  end
end
