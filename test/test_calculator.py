import pytest
from calculator.calculator import Calculator

def test_add():
    assert Calculator.add(1, 2) == 3

def test_subtract():
    assert Calculator.subtract(2, 1) == 1

def test_multiply():
    assert Calculator.multiply(2, 3) == 6

def test_divide():
    assert Calculator.divide(6, 3) == 2

def test_new():
    assert Calculator.new(4,2) == 0
    
def test_divide_by_zero():
    with pytest.raises(ValueError):
        Calculator.divide(1, 0)
