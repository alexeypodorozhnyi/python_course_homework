from abc import ABC, abstractmethod


class AbstractValidator(ABC):
    @abstractmethod
    def __init__(self):
        pass

    @abstractmethod
    def is_valid(self, value):
        pass


class TextValidator(AbstractValidator):
    def __init__(self, min_length=16, max_length=256):
        self.min_length = min_length
        self.max_length = max_length

    def is_valid(self, value):
        if not self.min_length <= len(value) <= self.max_length:
            return False
        return True


class IntegerValidator(AbstractValidator):
    def __init__(self, min_value=32, max_value=1024):
        self.min_value = min_value
        self.max_value = max_value

    def is_valid(self, value):
        if not self.min_value <= value <= self.max_value:
            return False
        return True

t = IntegerValidator(32,1024);
print(t.is_valid(45))

t2 = TextValidator(16,256)

print(t2.is_valid('dsadsadsadsadafadfad'))



