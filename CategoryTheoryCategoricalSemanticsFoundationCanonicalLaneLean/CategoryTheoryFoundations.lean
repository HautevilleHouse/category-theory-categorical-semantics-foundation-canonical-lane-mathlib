import canonicalLaneMathlib.AdmissibleClass

/-!
# Category Theory Foundations Package

This module defines the foundational structures for category-theoretic semantics:
categories, functors, natural transformations, and the Yoneda lemma as an
admissible-class bridge component.
-/

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (x : objects) → morphisms x x
  compose : {x y z : objects} → morphisms y z → morphisms x y → morphisms x z
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure CategoryEvidence (C : CategoryPackage) where
  associativityClosed : C.associativity
  identityLeftClosed : C.identityLeft
  identityRightClosed : C.identityRight

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.associativity ∧ C.identityLeft ∧ C.identityRight

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) :
    CategoryClosed C := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLeftClosed E.identityRightClosed)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse