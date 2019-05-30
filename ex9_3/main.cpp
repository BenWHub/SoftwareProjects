/*3) Write your own integer array class named IntArray from scratch (do not use std::array or std::vector). Users should
 * pass in the size of the array when it is created, and the array should be dynamically allocated. Use assert statements
 * to guard against bad data. Create any constructors or overloaded operators needed to make the following program operate correctly:*/


#include <iostream>
#include <cassert>



class IntArray
{

private:
    int *m_array = nullptr;
    int m_size = 0;

public:

    IntArray(int size){
        assert(size > 0 && "IntArray length should be a positive integer");
        m_array = new int[size];
        m_size = size;
    }
    IntArray(const IntArray &ia){
        m_size = ia.m_size;

        if(ia.m_array){

            //allocate memory for new object
            m_array = new int[m_size];

            //now need to do deep copy
            for(int i=0;i<m_size;i++){
                m_array[i]=ia.m_array[i];
            }
        }
        else{
            m_array =0;
        }

    }

    IntArray& operator=(IntArray& ia){
        if (this == &ia)
            return *this;

        delete[] m_array;

        m_size = ia.m_size;

        if(ia.m_array){
            m_array = new int[m_size];

            for(int i=0;i<m_size;i++){
                m_array[i]=ia.m_array[i];
            }
        }
        else{
            m_array = 0;
        }

        return *this;
    }

    int& operator[] (const int index)
    {
        assert(index >= 0);
        assert(index < m_size);
        return m_array[index];
    }

    ~IntArray(){
        delete [] m_array;
    }

    friend std::ostream& operator<<(std::ostream &out, const IntArray &array){
        for(int r=0;r<2;r++){
            out << "/n";
            for(int c=0;c<array.m_size;c++){
                out << array.m_array[c] << ' ';
            }
        }
    }
};


IntArray fillArray()

{
    IntArray a(5);

    a[0] = 5;
    a[1] = 8;
    a[2] = 2;
    a[3] = 3;
    a[4] = 6;

    return a;
}

int main()
{
    IntArray a = fillArray();

    // If you're getting crazy values here you probably forgot to do a deep copy in your copy constructor
    std::cout << a << '\n';

    IntArray b(1);
    a = a;
    b = a;

    // If you're getting crazy values here you probably forgot to do a deep copy in your assignment operator
    // or you forgot your self-assignment check
    std::cout << b << '\n';

    return 0;
}