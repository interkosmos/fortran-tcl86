#include <tcl.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * C macro wrappers.
 */
void Tcl_DecrRefCount_(void *);
void *Tcl_GetHashKey_(void *, void *);
void *Tcl_GetHashValue_(void *);
void Tcl_IncrRefCount_(void *);
void Tcl_SetHashValue_(void *, void *);

void Tcl_DecrRefCount_(void *objPtr)
{
    Tcl_DecrRefCount((Tcl_Obj *) objPtr);
}

void *Tcl_GetHashKey_(void *tablePtr, void *entryPtr)
{
    return Tcl_GetHashKey((Tcl_HashTable *) tablePtr, (Tcl_HashEntry *) entryPtr);
}

void *Tcl_GetHashValue_(void *entryPtr)
{
    return (void *) Tcl_GetHashValue((Tcl_HashEntry *) entryPtr);
}

void Tcl_IncrRefCount_(void *objPtr)
{
    Tcl_IncrRefCount((Tcl_Obj *) objPtr);
}

void Tcl_SetHashValue_(void *entryPtr, void *value)
{
    Tcl_SetHashValue((Tcl_HashEntry *) entryPtr, (ClientData) value);
}

#ifdef __cplusplus
}
#endif
