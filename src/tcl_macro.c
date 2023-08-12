#include <tcl.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * C macro wrappers.
 */
void Tcl_DecrRefCount_(Tcl_Obj *objPtr);
void *Tcl_GetHashKey_(Tcl_HashTable *tablePtr, Tcl_HashEntry *entryPtr);
ClientData Tcl_GetHashValue_(Tcl_HashEntry *entryPtr);
void Tcl_IncrRefCount_(Tcl_Obj *objPtr);
void Tcl_SetHashValue_(Tcl_HashEntry *entryPtr, ClientData value);

void Tcl_DecrRefCount_(Tcl_Obj *objPtr)
{
    Tcl_DecrRefCount(objPtr);
}

void *Tcl_GetHashKey_(Tcl_HashTable *tablePtr, Tcl_HashEntry *entryPtr)
{
    return Tcl_GetHashKey(tablePtr, entryPtr);
}

ClientData Tcl_GetHashValue_(Tcl_HashEntry *entryPtr)
{
    return Tcl_GetHashValue(entryPtr);
}

void Tcl_IncrRefCount_(Tcl_Obj *objPtr)
{
    Tcl_IncrRefCount(objPtr);
}

void Tcl_SetHashValue_(Tcl_HashEntry *entryPtr, ClientData value)
{
    Tcl_SetHashValue(entryPtr, value);
}

#ifdef __cplusplus
}
#endif
