from tdd.fizzbuzz import FizzBuzz

def test_1を渡したら文字列1を返す():
    fizzbuzz = FizzBuzz()
    assert fizzbuzz.convert(1) == "1"
