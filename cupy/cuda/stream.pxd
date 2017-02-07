from cupy.cuda import runtime


cdef class Event:

    cdef:
        public size_t ptr

    cpdef Event record(self, Stream stream=*)
    cpdef synchronize(self)


cpdef get_elapsed_time(Event start_event, Event end_event)

cdef class Stream:

    cdef:
        public size_t ptr

    cpdef synchronize(self)
    cpdef add_callback(self, callback, arg)
    cpdef record(self, Event event=*)
    cpdef wait_event(self, Event event)
