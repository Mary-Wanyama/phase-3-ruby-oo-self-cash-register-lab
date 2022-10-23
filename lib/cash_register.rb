class CashRegister

    attr_accessor :discount, :total, :item, :last_trans

    def initialize(discount=0, total=0, item=[], last_trans=0)
        @discount = discount
        @total = total
        @item = item
        @last_trans = last_trans
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        1..quantity.times {@item << title}
        self.last_trans = quantity * price
    end

    def apply_discount
        if self.discount != 0
            self.total -= ((self.discount/ 100.0) * self.total).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            'There is no discount to apply.'
        end
    end

    def items
        self.item
    end

    def void_last_transaction
        self.total -= last_trans
    end

end