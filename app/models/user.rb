class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A\+\d{10,15}\z/, message: "must be a valid phone number" }

  after_commit :send_welcome_sms, on: :create

  private

    def send_welcome_sms
      SendSmsJob.perform_later(self.phone_number, "You have signed up successfully!")
    end
end
