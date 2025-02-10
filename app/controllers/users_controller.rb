# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

    def other_users
      users = User.where.not(id: current_user.id)

      render json: {
        status: 200,
        message: "Users fetched successfully",
        data: users
      }, status: :ok
    end

    def send_sms
      user = User.find_by(id: params[:user_id])

      if user.nil?
        return render json: { status: 404, message: "User not found" }, status: :not_found
      end

      if user.phone_number.blank?
        return render json: { status: 400, message: "User has no phone number" }, status: :bad_request
      end

      message = params[:message]
      SendSmsJob.perform_later(user.phone_number, message)

      render json: { status: 200, message: "SMS is being sent to #{user.phone_number}" }, status: :ok
    end
end
