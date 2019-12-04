import bcrypt


class LenPhoneExcept(Exception):
    pass


class Users:
    def __init__(self, password, first_name, last_name, address, phones, *args, **kwargs):
        self._password = self.hash_password(password)
        self.first_name = first_name
        self.last_name = last_name
        self.address = self.validate_address(address)
        self.phones = self.validate_phone(phones)

    @staticmethod
    def hash_password(password):
        salt = bcrypt.gensalt()
        return bcrypt.hashpw(password.encode(), salt)

    @property
    def get_fullname(self):
        return self.first_name.strip() + ' ' + self.last_name.strip()

    @staticmethod
    def validate_phone(phone):
        # if len(list(filter(lambda x: len(x) <= 15, phone))) != len(phone):
        if not all(len(d) <= 15 for d in phone):
            raise LenPhoneExcept
        return phone

    @staticmethod
    def validate_address(address):
        keys = ['city', 'billing_address', 'index']
        if not all([key in d.keys() for key in keys for d in address]):
            raise ValueError("Not valid data")
        return address

    def print_info(self):
        return print(self.last_name + ',' + self.first_name + ',' + str(self.address) + ',' + str(self.phones))

    @property
    def password(self):
        raise Exception('Access Denied')

    @password.setter
    def password(self, password):
        self._password = self.hash_password(password)

    @password.deleter
    def password(self):
        delattr(self._password)


obj = Users('321312', 'Maxim', 'Petrov', [{'city': 'Kharkov', 'billing_address': 'Kirova, 16 kv.5', 'index': '61324'},
                                          {'city': 'Kharkov', 'billing_address': 'Kirova, 21 kv.18', 'index': '32323'}
                                          ], ['0979117082', '03213120032312', '321000211321'])

obj.password = "test_password"
