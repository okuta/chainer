cdef extern from "xmmintrin.h":
    unsigned int _mm_getcsr()
    void _mm_setcsr(unsigned int i)

def set_daz():
    cdef unsigned int mxcsr = _mm_getcsr()
    mxcsr |= (1<<6)
    _mm_setcsr(mxcsr)

def set_ftz():
    cdef unsigned int mxcsr = _mm_getcsr()
    mxcsr |= (1<<15) | (1<<11)
    _mm_setcsr(mxcsr)