use v6;

use HTML::Element;

use Test;
plan 5;

my $elem = HTML::Element.new('a', :href<test>, :class<something>);
is $elem.name, 'a', 'new 1/3';
is $elem.attr('href'), 'test', 'new 2/3';
is $elem.attr('class'), 'something', 'new 3/3';

$elem.attr('class', 'another');
is $elem.attr('class'), 'another', 'set attr 1/1';

$elem.push-content('content');
is $elem.content, 'content', 'push-content 1/1';
