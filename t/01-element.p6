use v6;

use HTML::Element;

use Test;
plan 3;

my $elem = HTML::Element.new('a', :href<test>, :class<something>);
is $elem.name, 'a', 'new 1/3';
is $elem.attr('href'), 'test', 'new 2/3';
is $elem.attr('class'), 'something', 'new 3/3';
