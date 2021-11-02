class BasicCalculator:

    def add(self, number1, number2):
        return float(number1) + float(number2)

#kwargs = key word arguments
    def kwargs_demo_1(self, *kwargs):
        for args in kwargs:
            if args == 'Apple':
                return True
        return False

    def kwargs_demo_2(self, **kwargs):
        if 'fruit' in kwargs.keys():
            if kwargs['fruit'] == 'mango':
                return True
            else:
                return False

    def findSmallestInt(self, arr):

        arr.sort()
        return arr[0]


cal = BasicCalculator()
