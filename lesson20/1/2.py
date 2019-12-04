class Parent:
    def test(self):
        print("test from perent")

class Child(Parent):
    def test2(self):
        print("test 2 from Child")

Child_instance =Child()
Child_instance.test()
Child_instance.test2()
print(Child_instance,test_attr)

