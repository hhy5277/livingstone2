/*
 * The Apache Software License, Version 1.1
 * 
 * Copyright (c) 1999-2000 The Apache Software Foundation.  All rights
 * reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer. 
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 
 * 3. The end-user documentation included with the redistribution,
 *    if any, must include the following acknowledgment:  
 *       "This product includes software developed by the
 *        Apache Software Foundation (http://www.apache.org/)."
 *    Alternately, this acknowledgment may appear in the software itself,
 *    if and wherever such third-party acknowledgments normally appear.
 * 
 * 4. The names "Xerces" and "Apache Software Foundation" must
 *    not be used to endorse or promote products derived from this
 *    software without prior written permission. For written 
 *    permission, please contact apache\@apache.org.
 * 
 * 5. Products derived from this software may not be called "Apache",
 *    nor may "Apache" appear in their name, without prior written
 *    permission of the Apache Software Foundation.
 * 
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 * 
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation, and was
 * originally based on software copyright (c) 1999, International
 * Business Machines, Inc., http://www.ibm.com .  For more information
 * on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 */

/*
 * $Log: SocketNetAccessor.cpp,v $
 * Revision 1.1.1.1  2000/09/20 20:40:47  bhudson
 * Importing xerces 1.2.0
 *
 * Revision 1.1  2000/03/20 23:48:51  rahulj
 * Added Socket based NetAccessor. This will enable one to
 * use HTTP URL's for system id's. Default build options do
 * not use this NetAccessor. Specify the '-n socket' option
 * to 'runConfigure' to configure Xerces-C to use this new
 * feature. The code works under Solaris 2.6, Linux, AIX
 * and HPUX 11 with aCC.
 * Todo's: enable proper error handling.
 *
 */


#include <util/XMLUni.hpp>
#include <util/XMLString.hpp>
#include <util/XMLExceptMsgs.hpp>
#include <util/NetAccessors/Socket/UnixHTTPURLInputStream.hpp>
#include <util/NetAccessors/Socket/SocketNetAccessor.hpp>


const XMLCh SocketNetAccessor::fgMyName[] =
{
    chLatin_S, chLatin_o, chLatin_c, chLatin_k, chLatin_e, chLatin_t,
    chLatin_N, chLatin_e, chLatin_t, chLatin_A, chLatin_c, chLatin_c,
    chLatin_e, chLatin_s, chLatin_s, chLatin_o, chLatin_r, chNull
};


SocketNetAccessor::SocketNetAccessor()
{
    // Do any one time initialization here.
    // Nothing to do, in this case.
}


SocketNetAccessor::~SocketNetAccessor()
{
    // Again, nothing to do here.
}


BinInputStream* SocketNetAccessor::makeNew(const XMLURL&  urlSource)
{
    XMLURL::Protocols  protocol = urlSource.getProtocol();
    switch(protocol)
    {
        case XMLURL::HTTP:
        {
            UnixHTTPURLInputStream* retStrm =
                new UnixHTTPURLInputStream(urlSource);
            return retStrm;
            break;
        }

        //
        // These are the only protocols we support now. So throw and
        // unsupported protocol exception for the others.
        //
        default :
            ThrowXML(MalformedURLException, XMLExcepts::URL_UnsupportedProto);
            break;
    }
    return 0;
}
