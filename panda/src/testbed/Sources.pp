#define OTHER_LIBS interrogatedb:c dconfig:c dtoolconfig:m \
                   dtoolutil:c dtoolbase:c dtool:m pystub

#define LOCAL_LIBS \
    framework putil collide pgraph chan text chancfg \
    pnmimage pnmimagetypes event effects gobj display \
    mathutil putil express dgraph device tform \
    linmath pstatclient panda

#if $[LINK_ALL_STATIC]
  // If we're statically linking, we need to explicitly link with
  // at least one graphics renderer.
  #define LOCAL_LIBS pandagl pandadx $[LOCAL_LIBS]

  // And we might like to have the egg loader available.
  #define LOCAL_LIBS pandaegg $[LOCAL_LIBS]
#endif


#begin bin_target
  #define TARGET pview

  #define SOURCES \
    pview.cxx
#end bin_target

//#begin test_bin_target
// want this in nitely bld
#begin bin_target
  #define TARGET pgrid

  #define SOURCES \
    pgrid.cxx
  #define UNIX_SYS_LIBS m
//#end test_bin_target
#end bin_target
