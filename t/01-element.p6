use v6;

use HTML::Element;

use Test;
plan 6;

my $elem = HTML::Element.new('a', 'this is: ', :href<test>, :class<something>);
is $elem.name, 'a', 'new 1/3';
is $elem.attr('href'), 'test', 'new 2/3';
is $elem.attr('class'), 'something', 'new 3/3';

$elem.attr('class', 'another');
is $elem.attr('class'), 'another', 'set attr 1/1';

$elem.push-content('content');
is $elem.content, 'this is: content', 'push-content 1/1';

is ~$elem, "<a href=\"test\" class=\"another\">\n" ~
           "this is: content\n" ~
           '</a>',
'Str 1/1';
