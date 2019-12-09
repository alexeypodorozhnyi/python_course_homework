# имя
# цена

# покупатель

# вип покупатель
# скидка 20 процентов
# супер вип покупатель
# скидка 20 процентов от предидушего
# у всех классов должен быть метод , который принимает, обьект товара

# п


class Product:
    def __init__(self, product, price):
        self.product = product
        self.price = price


class Customer:
    def __init__(self, money_sum):
        self.money_sum = money_sum

    def count_products(self, obj,discount):
        return round(self.money_sum / obj.price)

    def discount_price(self, obj, discount):
        price = obj.price * discount
        return price


class VipCustomer(Customer):

    def count_products(self, obj,discount):
        discount = 0.8
        count_products = round(self.money_sum / super().discount_price(obj, discount))
        return count_products



class SuperVipCustomer(VipCustomer):

    def count_products(self, obj):
        discount = 0.8
        count_products = super().count_products(obj,discount)
        return count_products


obj = Product('Молоко', 9.90)
pr = Customer(450)
pr1 = VipCustomer(450)
pr2 = SuperVipCustomer(450)

#print(pr.count_products(obj))
#print(pr1.count_products(obj))
print(pr2.count_products(obj))
