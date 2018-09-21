#include  <cassert>

#include "progress_state.h"


void test_set()
{
  ProgressState  progress(100);
  progress.setValue(0);
  assert((unsigned int) 0 == progress.getPercentage());
}


void test_minimum()
{
  ProgressState  progress(100);
  progress.setValue(-100);
  assert((unsigned int) 0 == progress.getPercentage());
}


void test_maximum()
{
  ProgressState progress(200);
  progress.setValue(200);
  assert((unsigned int) 100 == progress.getPercentage());
}


int main()
{
    test_set();
    test_minimum();
    test_maximum();
}
