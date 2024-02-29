package sealed;

import other.OtherPackageClass;
/*
* The only way for subclasses of sealed classes to be in a different package is
* to be within the same-named module(Selikoff & Boyarsky, n.d.).
*  */
public sealed class SealedClass permits OtherPackageClass {
}
