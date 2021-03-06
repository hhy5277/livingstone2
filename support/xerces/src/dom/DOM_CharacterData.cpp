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

/**
 * $Log: DOM_CharacterData.cpp,v $
 * Revision 1.1.1.1  2000/04/08 04:37:44  kurien
 * XML parser for C++
 *
 *
 * Revision 1.4  2000/02/06 07:47:28  rahulj
 * Year 2K copyright swat.
 *
 * Revision 1.3  2000/02/04 01:49:29  aruna1
 * TreeWalker and NodeIterator changes
 *
 * Revision 1.2  1999/12/03 00:11:22  andyh
 * Added DOMString.clone() to node parameters in and out of the DOM,
 * where they had been missed.
 *
 * DOMString::rawBuffer, removed incorrect assumptions about it
 * being null terminated.
 *
 * Revision 1.1.1.1  1999/11/09 01:08:49  twl
 * Initial checkin
 *
 * Revision 1.2  1999/11/08 20:44:13  rahul
 * Swat for adding in Product name and CVS comment log variable.
 *
 */

#include "DOM_CharacterData.hpp"
#include "CharacterDataImpl.hpp"


DOM_CharacterData::DOM_CharacterData()
: DOM_Node(null)
{
};

DOM_CharacterData::DOM_CharacterData(CharacterDataImpl *impl) :
DOM_Node(impl)
{
};


DOM_CharacterData::DOM_CharacterData(const DOM_CharacterData & other) :
DOM_Node(other)
{
};


DOM_CharacterData::~DOM_CharacterData() {
};

DOM_CharacterData & DOM_CharacterData::operator = (const DOM_CharacterData &other)
{
    return (DOM_CharacterData &) DOM_Node::operator = (other);
};

DOM_CharacterData & DOM_CharacterData::operator = (const DOM_NullPtr *other)
{
    return (DOM_CharacterData &) DOM_Node::operator = (other);
};


DOMString DOM_CharacterData::getData() const
{
    return ((CharacterDataImpl *)fImpl)->getData().clone();
};


void DOM_CharacterData::setData(const DOMString &data){
    ((CharacterDataImpl *)fImpl)->setData(data);
};



unsigned int DOM_CharacterData::getLength() const
{
    return ((CharacterDataImpl *)fImpl)->getCharDataLength();
};



DOMString DOM_CharacterData::substringData(unsigned int offset, unsigned int count) const
{
    return ((CharacterDataImpl *)fImpl)->substringData(offset, count);
};



void DOM_CharacterData::appendData(const DOMString &arg)
{
    ((CharacterDataImpl *)fImpl)->appendData(arg);
};



void DOM_CharacterData::insertData(unsigned int offset, const DOMString &arg){
    ((CharacterDataImpl *)fImpl)->insertData(offset, arg);
};




void DOM_CharacterData::deleteData(unsigned int offset, unsigned int count)
{
    ((CharacterDataImpl *)fImpl)->deleteData(offset, count);
};


void DOM_CharacterData::replaceData(unsigned int offset, unsigned int count, const DOMString &arg)
{
    ((CharacterDataImpl *)fImpl)->replaceData(offset, count, arg);
};


