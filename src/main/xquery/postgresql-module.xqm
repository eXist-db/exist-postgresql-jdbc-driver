xquery version "3.1";

(:~
 : A very simple example XQuery Library Module implemented
 : in XQuery.
 :)
module namespace postgresql = "https://exist-db.org/exist-db/ns/app/postgresql";

declare function postgresql:say-hello($name as xs:string?) as document-node(element(hello)) {
    document {
        element hello {
            if($name) then
                $name
            else
                "stranger"
        }
    }
};

declare function postgresql:hello-world() as document-node(element(hello)) {
    postgresql:say-hello("world")
};

declare function postgresql:add($a as xs:int, $b as xs:int) as xs:int {
    $a + $b
};
