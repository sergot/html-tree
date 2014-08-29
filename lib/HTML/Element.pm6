class HTML::Element;

has $.name;
has %.attrs;

method new($name, *%attrs) {
    self.bless(:$name, :%attrs);
}

multi method attr(Str $name) {
    %!attrs{$name}
}

multi method attr(Str $name, Str $value) {
    %!attrs{$name} = $value;
}
