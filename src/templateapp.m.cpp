#include <iostream>
#include <string>

#include <templateapp_util.h>

using namespace std;
using namespace templateapp;
     
int main()
{
  string question;

  cout << "What would you like to know?" << endl;
  cin >> question;
  cout << meaningOfLifeTheUniverseAndEverything(question) << endl;

  return 0;
}
