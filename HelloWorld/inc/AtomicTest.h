#ifndef C71500F9_F5A5_4D88_A3B8_15D7F814724E
#define C71500F9_F5A5_4D88_A3B8_15D7F814724E

#include <string>
using namespace std;

class AtomicTest {

public:
    AtomicTest() =default;
    ~AtomicTest() = default;


public:
    void testAtomicInt64();
    void testAtomicIntFlag();

public:
    static void threadFunction(const string &name, const int num);
    static void setAtomicFlag();
    static void clearAtomicFlag();

};

#endif /* C71500F9_F5A5_4D88_A3B8_15D7F814724E */
