<?php

/* index_body.html */
class __TwigTemplate_d4df685e4189c11b596bbe751b31b257c58d09fa70ab9125136ed8b51a76f5a4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "index_body.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "

";
        // line 4
        // line 5
        if (($context["U_MARK_FORUMS"] ?? null)) {
            // line 6
            echo "\t<div class=\"action-bar compact\">
\t<ul>
\t<li id=\"forums\">
\t\t<a href=\"";
            // line 9
            echo ($context["U_MARK_FORUMS"] ?? null);
            echo "\" class=\"mark-read leftside\" accesskey=\"m\" data-ajax=\"mark_forums_read\">";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MARK_FORUMS_READ");
            echo "</a>
\t</li>
\t</ul>
\t</div>
";
        }
        // line 14
        // line 15
        echo "
";
        // line 16
        $location = "forumlist_body.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("forumlist_body.html", "index_body.html", 16)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 17
        echo "
";
        // line 18
        // line 19
        echo "

";
        // line 21
        // line 22
        echo "<div class=\"tabcontentblock\">
";
        // line 23
        if (($context["S_DISPLAY_ONLINE_LIST"] ?? null)) {
            // line 24
            echo "<button class=\"tablink\" onclick=\"openPage('WhoIs', this, '#0076B1','#000')\" id=\"defaultOpen\"><i class=\"icon fa-users fa-fw cat\" aria-hidden=\"true\"></i><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("WHO_IS_ONLINE");
            echo "</span></button>
";
        }
        // line 26
        if (($context["S_DISPLAY_BIRTHDAY_LIST"] ?? null)) {
            // line 27
            echo "<button class=\"tablink\" onclick=\"openPage('B-day', this, '#0076B1','#000')\" ><i class=\"icon fa-birthday-cake fa-fw cat\" aria-hidden=\"true\"></i><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BIRTHDAYS");
            echo "</span></button>
";
        }
        // line 29
        if (($context["NEWEST_USER"] ?? null)) {
            // line 30
            echo "<button class=\"tablink\" onclick=\"openPage('Stats', this, '#0076B1','#000')\"><i class=\"icon fa-pie-chart fa-fw cat\" aria-hidden=\"true\"></i><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("STATISTICS");
            echo "</span></button>
";
        }
        // line 32
        echo "</div>
";
        // line 33
        if (($context["S_DISPLAY_ONLINE_LIST"] ?? null)) {
            // line 34
            echo "<div id=\"WhoIs\" class=\"tabcontent stat-block online-list\">
  ";
            // line 35
            if (($context["U_VIEWONLINE"] ?? null)) {
                echo "<h3><a href=\"";
                echo ($context["U_VIEWONLINE"] ?? null);
                echo "\">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("WHO_IS_ONLINE");
                echo "</a></h3>";
            } else {
                echo "<h3>";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("WHO_IS_ONLINE");
                echo "</h3>";
            }
            // line 36
            echo " <p>
\t\t\t";
            // line 37
            // line 38
            echo "\t\t\t";
            echo ($context["TOTAL_USERS_ONLINE"] ?? null);
            echo " (";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ONLINE_EXPLAIN");
            echo ")<br />";
            echo ($context["RECORD_USERS"] ?? null);
            echo "<br /> 
\t\t\t";
            // line 39
            if (($context["U_VIEWONLINE"] ?? null)) {
                // line 40
                echo "\t\t\t\t<br />";
                echo ($context["LOGGED_IN_USER_LIST"] ?? null);
                echo "
\t\t\t\t";
                // line 41
                if (($context["LEGEND"] ?? null)) {
                    echo "<br /><em>";
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LEGEND");
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("COLON");
                    echo " ";
                    echo ($context["LEGEND"] ?? null);
                    echo "</em>";
                }
                // line 42
                echo "\t\t\t";
            }
            // line 43
            echo "\t\t\t";
            // line 44
            echo "\t\t</p>
</div>
";
        }
        // line 47
        // line 48
        if (($context["S_DISPLAY_BIRTHDAY_LIST"] ?? null)) {
            // line 49
            echo "<div id=\"B-day\" class=\"tabcontent stat-block birthday-list\">
  <h3>";
            // line 50
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BIRTHDAYS");
            echo "</h3>
  <p>
\t\t\t";
            // line 52
            // line 53
            echo "\t\t\t";
            if (twig_length_filter($this->env, $this->getAttribute(($context["loops"] ?? null), "birthdays", array()))) {
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("CONGRATULATIONS");
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("COLON");
                echo " <strong>";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "birthdays", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["birthdays"]) {
                    echo $this->getAttribute($context["birthdays"], "USERNAME", array());
                    if (($this->getAttribute($context["birthdays"], "AGE", array()) !== "")) {
                        echo " (";
                        echo $this->getAttribute($context["birthdays"], "AGE", array());
                        echo ")";
                    }
                    if ( !$this->getAttribute($context["birthdays"], "S_LAST_ROW", array())) {
                        echo ", ";
                    }
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['birthdays'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                echo "</strong>";
            } else {
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_BIRTHDAYS");
            }
            // line 54
            echo "\t\t\t";
            // line 55
            echo "\t\t</p>
</div>
";
        }
        // line 58
        if (($context["NEWEST_USER"] ?? null)) {
            // line 59
            echo "<div id=\"Stats\" class=\"tabcontent stat-block statistics\">
   <h3>";
            // line 60
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("STATISTICS");
            echo "</h3>
  <p>
\t\t\t";
            // line 62
            // line 63
            echo "\t\t\t";
            echo ($context["TOTAL_POSTS"] ?? null);
            echo " &bull; ";
            echo ($context["TOTAL_TOPICS"] ?? null);
            echo " &bull; ";
            echo ($context["TOTAL_USERS"] ?? null);
            echo " &bull; ";
            echo ($context["NEWEST_USER"] ?? null);
            echo "
\t\t\t";
            // line 64
            // line 65
            echo "\t\t</p>
</div>
";
        }
        // line 68
        // line 69
        echo "
";
        // line 70
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "index_body.html", 70)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "index_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  241 => 70,  238 => 69,  237 => 68,  232 => 65,  231 => 64,  220 => 63,  219 => 62,  214 => 60,  211 => 59,  209 => 58,  204 => 55,  202 => 54,  176 => 53,  175 => 52,  170 => 50,  167 => 49,  165 => 48,  164 => 47,  159 => 44,  157 => 43,  154 => 42,  145 => 41,  140 => 40,  138 => 39,  129 => 38,  128 => 37,  125 => 36,  113 => 35,  110 => 34,  108 => 33,  105 => 32,  99 => 30,  97 => 29,  91 => 27,  89 => 26,  83 => 24,  81 => 23,  78 => 22,  77 => 21,  73 => 19,  72 => 18,  69 => 17,  57 => 16,  54 => 15,  53 => 14,  43 => 9,  38 => 6,  36 => 5,  35 => 4,  31 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "index_body.html", "");
    }
}
