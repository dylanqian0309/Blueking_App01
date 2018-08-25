# -*- coding:utf-8 -*-
from mako import runtime, filters, cache
UNDEFINED = runtime.UNDEFINED
__M_dict_builtin = dict
__M_locals_builtin = locals
_magic_number = 10
_modified_time = 1517902455.93745
_enable_loop = True
_template_filename = '/vagrant/testapp01/framework/templates/html/page_2.html'
_template_uri = '/html/page_2.html'
_source_encoding = 'utf-8'
_exports = [u'content', u'JavaScript']


def _mako_get_namespace(context, name):
    try:
        return context.namespaces[(__name__, name)]
    except KeyError:
        _mako_generate_namespaces(context)
        return context.namespaces[(__name__, name)]
def _mako_generate_namespaces(context):
    pass
def _mako_inherit(template, context):
    _mako_generate_namespaces(context)
    return runtime._inherit_from(context, u'/html/base.html', _template_uri)
def render_body(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        __M_locals = __M_dict_builtin(pageargs=pageargs)
        def content():
            return render_content(context._locals(__M_locals))
        def JavaScript():
            return render_JavaScript(context._locals(__M_locals))
        request = context.get('request', UNDEFINED)
        __M_writer = context.writer()
        __M_writer(u'\r\n\r\n')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'content'):
            context['self'].content(**pageargs)
        

        __M_writer(u'\r\n\r\n\r\n')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'JavaScript'):
            context['self'].JavaScript(**pageargs)
        

        __M_writer(u'\r\n\r\n')
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_content(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def content():
            return render_content(context)
        request = context.get('request', UNDEFINED)
        __M_writer = context.writer()
        __M_writer(u'\r\n\r\n        <div id="page-wrapper" class="gray-bg dashbard-1">\r\n        <div class="row border-bottom">\r\n        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">\r\n        <div class="navbar-header">\r\n            <div>\r\n                <h3>\r\n                    Here id page_2 demo ``\r\n                </h3>\r\n            </div>\r\n        </div>\r\n\r\n        </nav>\r\n        </div>\r\n            <div class="row border-bottom white-bg dashboard-header">\r\n                header\r\n            </div>\r\n        <div class="row">\r\n            <div class="col-lg-12">\r\n                <div class="wrapper wrapper-content">\r\n                    content\r\n                    <p>username: ')
        __M_writer(unicode(request.user.username))
        __M_writer(u'</p>\r\n                    <p>chname: ')
        __M_writer(unicode(request.user.chname))
        __M_writer(u'</p>\r\n                    <p>qq: ')
        __M_writer(unicode(request.user.qq))
        __M_writer(u'</p>\r\n                    <p>email: ')
        __M_writer(unicode(request.user.email))
        __M_writer(u'</p>\r\n                    <p>phone: ')
        __M_writer(unicode(request.user.phone))
        __M_writer(u'</p>\r\n                </div>\r\n\r\n')
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_JavaScript(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def JavaScript():
            return render_JavaScript(context)
        __M_writer = context.writer()
        __M_writer(u'\r\n    <script>\r\n        $(document).ready(function() {\r\n            $("#sidebar-page-2").addClass("active");\r\n        });\r\n    </script>\r\n\r\n')
        return ''
    finally:
        context.caller_stack._pop_frame()


"""
__M_BEGIN_METADATA
{"source_encoding": "utf-8", "line_map": {"64": 27, "65": 27, "66": 28, "67": 28, "36": 1, "69": 29, "41": 32, "75": 35, "46": 42, "81": 35, "52": 3, "87": 81, "68": 29, "26": 0, "59": 3, "60": 25, "61": 25, "62": 26, "63": 26}, "uri": "/html/page_2.html", "filename": "/vagrant/testapp01/framework/templates/html/page_2.html"}
__M_END_METADATA
"""
