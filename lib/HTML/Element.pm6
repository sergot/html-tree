class HTML::Element;

has $.name;
has %.attrs;

method new($name, *%attrs) {
    self.bless(:$name, :%attrs);
}

method attr(Str $name) {
    %!attrs{$name}
}
