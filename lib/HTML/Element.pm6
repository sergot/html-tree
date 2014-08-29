class HTML::Element;

has $.name;
has %.attrs;
has $.content;

method new($name, $content?, *%attrs) {
    self.bless(:$name, :$content, :%attrs);
}

multi method attr(Str $name) {
    %!attrs{$name}
}

multi method attr(Str $name, Str $value) {
    %!attrs{$name} = $value;
}

method push-content(Str $content) {
    $!content ~= $content;
}
