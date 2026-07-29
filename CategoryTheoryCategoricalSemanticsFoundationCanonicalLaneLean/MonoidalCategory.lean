import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure MonoidalCategoryPackage where
  category : Type u -> Type v
  tensorProduct : Type u -> Type u -> Type u
  unit : Type u
  associator : (a b c : Type u) -> tensorProduct (tensorProduct a b) c ≅ tensorProduct a (tensorProduct b c)
  leftUnitor : (a : Type u) -> tensorProduct unit a ≅ a
  rightUnitor : (a : Type u) -> tensorProduct a unit ≅ a
  pentagonIdentity : (a b c d : Type u) -> associator a b c ▷ d ∘ associator (tensorProduct a b) c d ∘ (a ◁ associator b c d) = associator a (tensorProduct b c) d ∘ associator a b (tensorProduct c d)
  triangleIdentity : (a b : Type u) -> associator a unit b ∘ (a ◁ leftUnitor b) = rightUnitor a ▷ b

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.pentagonIdentity ∧ M.triangleIdentity

end HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse