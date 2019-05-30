#include <iostream>
#include <cstdint> // for fixed width integers

class Average{
    int32_t m_sum;
    int8_t m_entries;


public:
    Average(): m_sum(0),m_entries(0) {};

    Average& operator+=(int num){
        m_sum+=num;
        m_entries++;

        //By having functions that would otherwise return void return *this instead, you can make those functions chainable.
        return *this;
    }
    //Any time we want our overloaded binary operators to be chainable in such a manner, the left operand should be returned (by reference).
    friend std::ostream& operator<<(std::ostream &out, const Average &average){
        std::cout << average.m_sum/average.m_entries;
    }

};

int main()
{
    Average avg;

    avg += 4;
    std::cout << avg << '\n'; // 4 / 1 = 4

    avg += 8;
    std::cout << avg << '\n'; // (4 + 8) / 2 = 6

    avg += 24;
    std::cout << avg << '\n'; // (4 + 8 + 24) / 3 = 12

    avg += -10;
    std::cout << avg << '\n'; // (4 + 8 + 24 - 10) / 4 = 6.5

    (avg += 6) += 10; // 2 calls chained together
    std::cout << avg << '\n'; // (4 + 8 + 24 - 10 + 6 + 10) / 6 = 7

    Average copy = avg;
    std::cout << copy << '\n';

    return 0;
}