<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" exclude-result-prefixes="d">

<xsl:template name="user.webhelp.head.content">
<xsl:text disable-output-escaping="yes">
<![CDATA[

<!-- favicon -->

<link rel="shortcut icon" href="common/images/favicon.ico" />

<!-- fonts -->

<link href='//fonts.googleapis.com/css?family=Ubuntu+Mono|PT+Sans:400,700,400italic' rel='stylesheet' type='text/css' />

<!-- Syntax Highlighter -->

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/codemirror.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/theme/neo.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/codemirror.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/addon/runmode/runmode.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/javascript/javascript.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/shell/shell.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/sql/sql.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/xml/xml.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/clike/clike.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/codemirror/4.6.0/mode/cypher/cypher.js"></script>

<script src="js/colorize.js"></script>
 
<script type="text/javascript">
  $(function (){
    CodeMirror.colorize();
  });
</script>

<!-- Cypher Console -->

<script type="text/javascript" src="js/console.js"></script>
<script type="text/javascript" src="js/cypherconsole.js"></script>

<!-- Version -->
<script type="text/javascript" src="js/version.js"></script>
<script type="text/javascript" src="js/versionswitcher.js"></script>

<!-- Discuss -->
<script type="text/javascript" src="js/mutate.min.js"></script>
<script type="text/javascript" src="js/disqus.js"></script>

<script type="text/javascript">
    /*@cc_on @*/
    /*@
     $( '#content' ).addClass( 'internet-explorer' );
     @*/
</script>

]]>
</xsl:text>

</xsl:template>

</xsl:stylesheet>

