#include <iostream>
#include <fstream>

int main() {
    std::ifstream file("/proc/uptime");
    if (!file.is_open()) {
        std::cerr << "Failed to open /proc/uptime\n";
        return 1;
    }
    double uptime;
    file >> uptime;
    std::cout << "Uptime (seconds): " << uptime << std::endl;
    return 0;
}
