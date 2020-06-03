#include <string>

std::string fullString;

extern "C"
{
    const char *greet(const char *name)
    {
        fullString = std::string{"hello "};
        fullString.append(name);
        return fullString.data();
    }
}
