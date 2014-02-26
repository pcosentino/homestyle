require 'spec_helper'

describe User do
	context "validity" do
		it "is invalid without first name" do
			expect(User.new.errors_on(:first_name)).to include("can't be blank")
		end
		it "is invalid without last name" do
			expect(User.new.errors_on(:last_name)).to include("can't be blank")
		end
	end
end
