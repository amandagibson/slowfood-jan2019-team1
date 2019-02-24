Given("I visit the landing page") do
    visit root_path
end

When("I fill in {string} with {string}") do |field, content|
    form = find_all('.general-form').first
        within form do
        fill_in field, with: content
    end
end

When("I click on {string}") do |element|
    click_on element
end

Given("the following products exist") do |table|
    table.hashes.each do |product|
        FactoryBot.create(:product, product)
    end
end

Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I click on {string} on {string}") do |element, product_name|
    product = Product.find_by_name(product_name)
        within("#product_#{product.id}") do
        click_on element
    end
end