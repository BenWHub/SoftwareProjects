#include <iostream>
#include <cstdint>
#include <assert.h>

/*A better solution would be to use a 16-bit signed integer to hold the non-fractional part of the number, and an 8-bit signed integer to hold the fractional component.

4b) Write a class named FixedPoint2 that implements the recommended solution from the previous question. If either (or both) of the non-fractional and fractional part of the number are negative, the number should be treated as negative. Provide the overloaded operators and constructors required for the following program to run:

*/


class FixedPoint2{
private:
    int16_t m_number;
    int8_t m_decimal;
public:
    FixedPoint2(int16_t number = 0,int8_t decimal = 0):m_number(number),m_decimal(decimal) {
        //assert(m_decimal < 99 && "decimal needs to be less than 99");
        if (m_number > 0 && m_decimal < 0) {
            m_number = -m_number;
        } else if (m_number < 0 && m_decimal > 0) {
            m_decimal = -m_decimal;
        }
        //friend std::ostream operator<<(std::ostream &out, const FixedPoint2 &point);
    }
    operator double() const{
        return m_number + static_cast<double>(m_decimal)/100;
    }
};

std::ostream& operator<<(std::ostream &out, const FixedPoint2 &point){
    out << static_cast<double>(point);
    return out;
}

int main()
{
    FixedPoint2 a(34, 56);
    std::cout << a << '\n';

    FixedPoint2 b(-2, 8);
    std::cout << b << '\n';

    FixedPoint2 c(2, -8);
    std::cout << c << '\n';

    FixedPoint2 d(-2, -8);
    std::cout << d << '\n';

    FixedPoint2 e(0, -5);
    std::cout << e << '\n';

    std::cout << static_cast<double>(e) << '\n';

    return 0;
}