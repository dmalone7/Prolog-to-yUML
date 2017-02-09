David Malone; Sean Wang - P3

Running Project:

To run, use
java MDL.Vm2t <filename.vpl.pl> toYuml.vm myoutput.txt

Or if you want to use the Bash Script, use
./run.sh

YUML Generated Spec:

[Attribute|name;key|];
[Entity|name|];
[Relationship|name|];

[Attribute]* hasAttr-1 belongsTo[Entity]
[Entity]2..* participant-* participates[Relationship]

[Gate||];
[And||];
[Or||];
[Not||];
[InputPort||];
[OutputPort||];
[InputPin||];
[OutputPin||];

[Gate]-* exports<[OutputPin]
[Gate]-* imports<[InputPin]
[And]-^[Gate]
[Or]-^[Gate]
[Not]-^[Gate]
[InputPort]-^[Gate]
[OutputPort]-^[Gate]

[LinkedList|node;headOfList|getFirst();getNext();atEnd();insert();delete()];
[BinaryTree|node;headOfTree|getFirst();getNext();atEnd();insert();delete()];

[Interface;EditableContainer|insert();delete()];
[Interface;ReadOnlyContainer|getFirst();getNext();atEnd()];

[LinkedList]-.-^[Interface;EditableContainer]
[BinaryTree]-.-^[Interface;EditableContainer]
[LinkedList]-.-^[Interface;ReadOnlyContainer]
[BinaryTree]-.-^[Interface;ReadOnlyContainer]
[Interface;EditableContainer]-^[Interface;ReadOnlyContainer]

[class||];
[student||];
[grade|score|];

[grade]*-1 <[class]
[grade]*-1<[student]

[ShoppingCart|subTotalMoney;vatAmount;totalMoney|];
[Customer|customerName;billingAddress;shippingAddress;emailaddress;otherDetails|];
[CreditCard|issuer;cardNumber;dateOfExpiry|];
[PreferredCustomer|discountRate;approvalDate|];
[ItemToPurchase|quantity;pricePerUnit|];
[Product|productName;productDescription;otehrDetails|];

[ItemToPurchase]*-1[Product]
[ShoppingCart]1-1..*[ItemToPurchase]
[ShoppingCart]1-1[CreditCard]
[CreditCard]*-1[PreferredCustomer]
[ShoppingCart]*-1[Customer]
[PreferredCustomer]-^[Customer]

[university|name|];
[campus|location|];
[city|name|];
[building|name|];

[university]1 belongsTo-* has[campus]
[campus]1 isOn-* has[building]
[university]* hasCampOf-* hasCampIn[city]
[city]* siteOf-1 isIn[campus]

