/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
/* Replacement <selinux/label.h> for platforms that lack it.
   Copyright 2020-2021 Free Software Foundation, Inc.

   This file is free software: you can redistribute it and/or modify
   it under the terms of the GNU Lesser General Public License as
   published by the Free Software Foundation; either version 2.1 of the
   License, or (at your option) any later version.

   This file is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* Written by Paul Eggert.  */

#ifndef SELINUX_LABEL_H

#define SELINUX_LABEL_H

#include <selinux/selinux.h>
#include <errno.h>

#ifndef _GL_INLINE_HEADER_BEGIN
 #error "Please include config.h first."
#endif
_GL_INLINE_HEADER_BEGIN
#ifndef SE_LABEL_INLINE
# define SE_LABEL_INLINE _GL_INLINE
#endif

#define SELABEL_CTX_FILE 0

struct selabel_handle;

SE_LABEL_INLINE int
selabel_lookup (_GL_ATTRIBUTE_MAYBE_UNUSED struct selabel_handle *hnd,
                _GL_ATTRIBUTE_MAYBE_UNUSED char **context,
                _GL_ATTRIBUTE_MAYBE_UNUSED char const *key,
                _GL_ATTRIBUTE_MAYBE_UNUSED int type)
{ errno = ENOTSUP; return -1; }

SE_LABEL_INLINE struct selabel_handle *
selabel_open (_GL_ATTRIBUTE_MAYBE_UNUSED int backend,
              _GL_ATTRIBUTE_MAYBE_UNUSED struct selinux_opt *options,
              _GL_ATTRIBUTE_MAYBE_UNUSED unsigned nopt)
{ errno = ENOTSUP; return 0; }

SE_LABEL_INLINE void
selabel_close (_GL_ATTRIBUTE_MAYBE_UNUSED struct selabel_handle *hnd)
{ errno = ENOTSUP; }

_GL_INLINE_HEADER_END

#endif