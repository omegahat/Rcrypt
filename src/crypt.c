#include <Rinternals.h>

#define _XOPEN_SOURCE
#include <unistd.h>

SEXP
R_crypt(SEXP values, SEXP salt)
{
    int i, n;
    char *tmp, *s;
    SEXP ans;

    n = LENGTH(values);

    PROTECT(ans = allocVector(STRSXP, n));

    for(i = 0; i < n; i++) {
	s = CHAR(STRING_ELT(salt, LENGTH(salt) == 1 ? 0 : i));
        tmp = crypt(CHAR(STRING_ELT(values, i)), s);
	SET_STRING_ELT(ans, i, mkChar(tmp));
    }

    UNPROTECT(1);
    return(ans);
}
