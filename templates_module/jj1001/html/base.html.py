# -*- coding:utf-8 -*-
from mako import runtime, filters, cache
UNDEFINED = runtime.UNDEFINED
__M_dict_builtin = dict
__M_locals_builtin = locals
_magic_number = 10
_modified_time = 1517902534.684317
_enable_loop = True
_template_filename = u'/vagrant/testapp01/framework/templates/html/base.html'
_template_uri = u'/html/base.html'
_source_encoding = 'utf-8'
_exports = [u'content', u'head', u'JavaScript']


def render_body(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        __M_locals = __M_dict_builtin(pageargs=pageargs)
        def head():
            return render_head(context._locals(__M_locals))
        STATIC_VERSION = context.get('STATIC_VERSION', UNDEFINED)
        self = context.get('self', UNDEFINED)
        def JavaScript():
            return render_JavaScript(context._locals(__M_locals))
        request = context.get('request', UNDEFINED)
        APP_ID = context.get('APP_ID', UNDEFINED)
        STATIC_URL = context.get('STATIC_URL', UNDEFINED)
        SITE_URL = context.get('SITE_URL', UNDEFINED)
        def content():
            return render_content(context._locals(__M_locals))
        __M_writer = context.writer()
        __M_writer(u'<!DOCTYPE html>\n<html>\n  <head>\n    ')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'head'):
            context['self'].head(**pageargs)
        

        __M_writer(u'\n  </head>\n\n<body>\n<!-- menu sidebar -->\n    <div id="wrapper">\n        <nav class="navbar-default navbar-static-side" role="navigation">\n            <div class="sidebar-collapse">\n                <ul class="nav metismenu" id="side-menu">\n                    <li class="nav-header">\n                        <div class="dropdown profile-element"> <span>\n                            <img alt="image" class="img-circle" src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/img/profile_small.jpg" />\n                             </span>\n                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">\n                                <span class="clear">\n                                    <span class="block m-t-xs">\n                                        <strong class="font-bold">')
        __M_writer(unicode(request.user.username))
        __M_writer(u'</strong>\n                                    </span>\n                                </span>\n                            </a>\n                            <ul class="dropdown-menu animated fadeInRight m-t-xs">\n                                <li><a href="profile.html">Profile</a></li>\n                                <li><a href="contacts.html">Contacts</a></li>\n                                <li><a href="mailbox.html">Mailbox</a></li>\n                                <li class="divider"></li>\n                                <li><a href="login.html">Logout</a></li>\n                            </ul>\n                        </div>\n                        <div class="logo-element">\n                            IN+\n                        </div>\n                    </li>\n                    <li id="sidebar-dashboard">\n                        <a href="#">\n                            <i class="fa fa-th-large"></i>\n                            <span class="nav-label">Dashboards</span>\n                            <span class="fa arrow"></span>\n                        </a>\n                        <ul class="nav nav-second-level collapse">\n                            <li id="sidebar-dashboard-v1"><a href="/demo/index/">Dashboard v.1</a></li>\n                        </ul>\n                    </li>\n                    <li id="sidebar-page-2">\n                        <a href="/demo/page_2/"><i class="fa fa-diamond"></i>\n                            <span class="nav-label">Page_2</span>\n                        </a>\n                    </li>\n                    <li id="sidebar-page-3">\n                        <a href="/demo/page_3"><i class="fa fa-pie-chart"></i>\n                            <span class="nav-label">Page_3</span>\n                            <span class="label label-primary pull-right">NEW</span>\n                        </a>\n                    </li>\n                </ul>\n\n            </div>\n        </nav>\n    <!--\u9876\u90e8\u5bfc\u822a End-->\n    <!-- \u56fa\u5b9a\u5bbd\u5ea6\u5c45\u4e2d start -->\n    ')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'content'):
            context['self'].content(**pageargs)
        

        __M_writer(u'\n\n\n    <!-- \u56fa\u5b9a\u5bbd\u5ea6\u8868\u5355\u5c45\u4e2d end -->\n    <!-- \u5c3e\u90e8\u58f0\u660e start -->\n    <div class="footer">\n                    <div>\n                        <strong style="margin-right:4px">Copyright</strong>  Jky Garena &copy; 2014-2018\n                    </div>\n                </div>\n            </div>\n    </div>\n    <!-- \u5c3e\u90e8\u58f0\u660e start -->\n    <!-- jquery js  -->\n    <!-- Mainly scripts -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/jquery-2.1.1.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/bootstrap.min.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/metisMenu/jquery.metisMenu.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>\n\n    <!-- Flot -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/flot/jquery.flot.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/flot/jquery.flot.tooltip.min.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/flot/jquery.flot.spline.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/flot/jquery.flot.resize.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/flot/jquery.flot.pie.js"></script>\n\n    <!-- Peity -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/peity/jquery.peity.min.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/demo/peity-demo.js"></script>\n\n    <!-- Custom and plugin javascript -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/inspinia.js"></script>\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/pace/pace.min.js"></script>\n\n    <!-- jQuery UI -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/jquery-ui/jquery-ui.min.js"></script>\n\n    <!-- GITTER -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/gritter/jquery.gritter.min.js"></script>\n\n    <!-- Sparkline -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/sparkline/jquery.sparkline.min.js"></script>\n\n    <!-- Sparkline demo data  -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/demo/sparkline-demo.js"></script>\n\n    <!-- ChartJS-->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/chartJs/Chart.min.js"></script>\n\n    <!-- Toastr -->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/toastr/toastr.min.js"></script>\n    <!--\u914d\u7f6ejs  \u52ff\u5220-->\n    <script src="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'js/settings.js?v=')
        __M_writer(unicode(STATIC_VERSION))
        __M_writer(u'" type="text/javascript"></script>\n\n    ')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'JavaScript'):
            context['self'].JavaScript(**pageargs)
        

        __M_writer(u'\n    ')
        __M_writer(unicode(self.body()))
        __M_writer(u'\n    <!-- \u517c\u5bb9\u6027\u8bbe\u7f6e -->\n    <!--[if lt IE 6]>\\xe8\\x93\\x9d\\xe9\\xb2\\xb8\\xe6\\x99\\xba\\xe8\\x90\\xa5\\x20\\xe7\\x89\\x88\\xe6\\x9d\\x83\\xe6\\x89\\x80\\xe6\\x9c\\x89<![endif]-->\n  </body>\n</html>\n')
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_content(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def content():
            return render_content(context)
        __M_writer = context.writer()
        __M_writer(u'\n    ')
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_head(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def head():
            return render_head(context)
        APP_ID = context.get('APP_ID', UNDEFINED)
        STATIC_URL = context.get('STATIC_URL', UNDEFINED)
        SITE_URL = context.get('SITE_URL', UNDEFINED)
        __M_writer = context.writer()
        __M_writer(u'\n    <meta charset="utf-8">\n    <meta name="viewport" content="width=device-width, initial-scale=1.0">\n\n    <title>Jky for Bking</title>\n\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/css/bootstrap.min.css" rel="stylesheet">\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/font-awesome/css/font-awesome.css" rel="stylesheet">\n\n    <!-- Toastr style -->\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/css/plugins/toastr/toastr.min.css" rel="stylesheet">\n\n    <!-- Gritter -->\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">\n\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/css/animate.css" rel="stylesheet">\n    <link href="')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'v1/css/style.css" rel="stylesheet">\n        <!-- \u8fd9\u4e2a\u662f\u5168\u5c40\u914d\u7f6e\uff0c\u5982\u679c\u9700\u8981\u5728js\u4e2d\u4f7f\u7528app_id\u548csite_url,\u5219\u8fd9\u4e2ajavascript\u7247\u6bb5\u4e00\u5b9a\u8981\u4fdd\u7559 -->\n        <script type="text/javascript">\n\t    \t  var app_id = "')
        __M_writer(unicode(APP_ID))
        __M_writer(u'";\n              var site_url = "')
        __M_writer(unicode(SITE_URL))
        __M_writer(u'";\t  // app\u7684url\u524d\u7f00,\u5728ajax\u8c03\u7528\u7684\u65f6\u5019\uff0c\u5e94\u8be5\u52a0\u4e0a\u8be5\u524d\u7f00\n              var static_url = "')
        __M_writer(unicode(STATIC_URL))
        __M_writer(u'"; // \u9759\u6001\u8d44\u6e90\u524d\u7f00\n\t    </script>\n    ')
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_JavaScript(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def JavaScript():
            return render_JavaScript(context)
        __M_writer = context.writer()
        return ''
    finally:
        context.caller_stack._pop_frame()


"""
__M_BEGIN_METADATA
{"source_encoding": "utf-8", "line_map": {"128": 14, "129": 17, "130": 17, "131": 19, "132": 19, "133": 20, "134": 20, "135": 23, "136": 23, "137": 24, "138": 24, "139": 25, "140": 25, "15": 0, "146": 142, "157": 146, "32": 1, "37": 27, "38": 38, "39": 38, "40": 43, "41": 43, "46": 87, "47": 102, "48": 102, "49": 103, "50": 103, "51": 104, "52": 104, "53": 105, "54": 105, "55": 108, "56": 108, "57": 109, "58": 109, "59": 110, "60": 110, "61": 111, "62": 111, "63": 112, "64": 112, "65": 115, "66": 115, "67": 116, "68": 116, "69": 119, "70": 119, "71": 120, "72": 120, "73": 123, "74": 123, "75": 126, "76": 126, "77": 129, "78": 129, "79": 132, "80": 132, "81": 135, "82": 135, "83": 138, "84": 138, "85": 140, "86": 140, "87": 140, "88": 140, "93": 142, "94": 143, "95": 143, "101": 86, "107": 86, "113": 4, "122": 4, "123": 10, "124": 10, "125": 11, "126": 11, "127": 14}, "uri": "/html/base.html", "filename": "/vagrant/testapp01/framework/templates/html/base.html"}
__M_END_METADATA
"""
