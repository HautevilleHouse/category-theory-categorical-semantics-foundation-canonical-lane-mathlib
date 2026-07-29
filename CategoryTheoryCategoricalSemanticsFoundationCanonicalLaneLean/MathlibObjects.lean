import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure CategoryTheoryCategory where
  carrier : Type u
  homSet : carrier → carrier → Type v
  identity : (X : carrier) → homSet X X
  composition : {X Y Z : carrier} → homSet X Y → homSet Y Z → homSet X Z
  associativity : Prop
  identityLaw : Prop

structure CategoryTheoryAdmittedObject where
  category : CategoryTheoryCategory
  productLimits : Prop
  coproductColimits : Prop
  expAdjoint : Prop
  everythingClosed : productLimits ∧ coproductColimits ∧ expAdjoint
  conclusion : everythingClosed

def CategoryTheoryWitnessClosed (O : CategoryTheoryAdmittedObject) : Prop :=
  O.everythingClosed

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse