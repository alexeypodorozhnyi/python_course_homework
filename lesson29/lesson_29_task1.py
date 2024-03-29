import datetime


class ClientDate:
    def __init__(self, date):
        self.date = self.check_date_over_then_today(self.check_date_low_1900(date))

    @staticmethod
    def check_date_low_1900(date):
        if datetime.datetime.strptime(date, '%d-%m-%Y') < datetime.datetime.strptime('01-01-1900', '%d-%m-%Y'):
            raise Exception("Date is before 1900")
        return date

    @staticmethod
    def check_date_over_then_today(date):
        if datetime.datetime.now()<=datetime.datetime.strptime(date, '%d-%m-%Y'):
            raise Exception("Date is after today")
        return date

    @property
    def age(self):
        current_date=datetime.datetime.now()
        date = datetime.datetime.strptime(self.date, '%d-%m-%Y')
        if date.month >= current_date.month and date.day > current_date.day:
            return current_date.year - date.year - 1
        return current_date.year - date.year

    @property
    def intercalary_years_count(self):
        current_date=datetime.date(datetime.date.today().year,1,1)
        date = datetime.date(datetime.datetime.strptime(self.date, '%d-%m-%Y').year,1, 1)
        return (current_date - date).days % 365


d = ClientDate('11-08-1988')
print(d.age)
print(d.intercalary_years_count)