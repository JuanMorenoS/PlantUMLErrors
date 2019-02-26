private(x). %Class, Method or Attribute
public(x). %Class, Method or Attribute
protected(x). %Class, Method or Attribute
class(c). %Define a class
interface(c). %Define a interface
abstract(c). %Define Abstract

method(m,c).
attribute(a,c).

dependency(a,b). %A use B
multiplicity(a,b,m). %A have [0,1,*,1..*] of B
aggregation(a,b). %Car <>-- Passengers
composition(a,b). %Car <o>-- Engine
inheritance(a,b). %User <|-- Admin // User <|-- Monitor
implements(a,b). %A implements B

% Rules:

% Bucle
multiplicityError(X):- class(X),multiplicity(X,X,"1");multiplicity(X,X,"1..*").

extendError(A,B,C):- class(A),class(B),class(C),abstract(C),inheritance(A,C),inheritance(B,C),inheritance(A,B).

extendError2(A,B) :- class(A),class(B),inheritance(A,B),multiplicity(A,B,_).
