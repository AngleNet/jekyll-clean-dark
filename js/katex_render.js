(function(){$(function(){return $("script[type='math/tex']").replaceWith(function(){var t;return t=$(this).text(),'<span class="inline-equation"> '+katex.renderToString(t)+" </span>"}),$("script[type='math/tex; mode=display']").replaceWith(function(){var t;return t=$(this).text(),'<div class="equation"> '+katex.renderToString("\\displaystyle "+t)+" </div>"})})}).call(this);