require 'rails_helper'

RSpec.describe Product, type: :model do
  product = Product.new(name: "Chair", price_cents: 20000, quantity: 2, category: Category.new(name: "Furniture"))

  describe 'Validations' do
    it 'is valid with name, price, quantity, and category' do
      expect(product).to be_valid
    end
    it 'is not valid without a name' do
      product.name = nil
      expect(product).to_not be_valid
    end
    it 'is not valid without a quantity' do
      product.quantity = nil
      expect(product).to_not be_valid
    end
    it 'is not valid without a price' do
      product.price_cents = nil
      expect(product).to_not be_valid
    end
    it 'is not valid without a category' do
      product.category = nil
      expect(product).to_not be_valid
    end
  end
end
