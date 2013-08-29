require 'spec_helper'

describe "passport/index.html.erb" do
 
 it "displays all the passports" do
    assign(:passports, [
      stub_model(Passport, :id => "12345"),
      stub_model(Passport, :id => "4567")
    ])

    render

    expect(rendered).to include("12345")
    expect(rendered).to include("4567")
  end
end
