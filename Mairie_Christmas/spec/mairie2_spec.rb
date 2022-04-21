require_relative "../lib/mairie2"
#------- PATH ------------
url = "https://www.annuaire-des-mairies.com/val-d-oise.html"

#-------- TEST ------------
describe "the name of city" do
  it "should return true if the name of the city is present in array" do
    expect(change_url.include? ("https://www.annuaire-des-mairies.com/95/aincourt.html")).to eq(true)
    expect(change_url.include? ("https://www.annuaire-des-mairies.com/95/bessancourt.html")).to eq(true)
    expect(change_url.include? ("https://www.annuaire-des-mairies.com/95/hodent.html")).to eq(true)
    expect(change_url.include? ("https://www.annuaire-des-mairies.com/95/montigny-les-cormeilles.html")).to eq(true)
    expect(change_url.include? ("https://www.annuaire-des-mairies.com/95/montigny-les-cormeillessalut.html")).to eq(false)

  end
end
describe"the number of cities" do
  it"should return the correct count" do
    expect(change_url.count).to eq(185)
    expect(change_url.count > 50).to eq(true)
    expect(change_url.count >200).to eq(false)
  end
end
