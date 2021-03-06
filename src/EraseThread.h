#ifndef FL_ERASETHREAD_H_
#define FL_ERASETHREAD_H_
#include <QThread>
#include "AbstractPort.h"
#include "Logic.h"

class EraseThread:public QThread
{
Q_OBJECT
public:
  char mem; /* memory type for erase */
  char mbc; /* Memory Bank Controler type */
  char par;
  char dap;
  bool end; /* end of thread marker */
  AbstractPort *port;
/* main point of thread  */
  virtual void run ();
public slots:
  void canceled (void) { end = true; }
signals:
  void set_progress (int ile, int max);
  void error (int err);
};

#endif
