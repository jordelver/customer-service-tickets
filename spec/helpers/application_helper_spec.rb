require "rails_helper"

describe ApplicationHelper do

  describe "#error_message" do

    let(:object) do
      double("Ticket", errors: errors)
    end

    let(:errors) { ActiveModel::Errors.new(self) }

    context "there is an error" do
      it "outputs the error message" do

        # Add an error
        errors.add(:foobar, "Mistakes were made")

        expect(helper.error_message(object, :foobar, "Error to show")).to match /Error to show/
      end
    end

    context "there is NO error" do
      it "outputs nothing" do
        expect(helper.error_message(object, :nope, "Error to show")).to be nil
      end
    end
  end
end

