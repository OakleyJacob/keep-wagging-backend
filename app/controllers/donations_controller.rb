class DonationsController < ApplicationController
    def index
        donation = Donation.first
        render json: donation
    end
    def update
        donation = Donation.first
          if donation.update(amount: (params[:id].to_f)+donation.amount)
           render json: donation
        else
           render json: donation.errors, status: 422
        end
    end
    private
    def donation_params
        params.require(:donation).permit(:amount)
      end
end
