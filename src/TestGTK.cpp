//============================================================================
// Name        : TestGTK.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <gtkmm.h>

int main(int argc, char *argv[])
{

  Gtk::Main kit(argc, argv);
  Gtk::Window GtkmmTutorial;
  GtkmmTutorial.set_default_size(400, 400);
  Gtk::Main::run(GtkmmTutorial);

  return 0;
}
