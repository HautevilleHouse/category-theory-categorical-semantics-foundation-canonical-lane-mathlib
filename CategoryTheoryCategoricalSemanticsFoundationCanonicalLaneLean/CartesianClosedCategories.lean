import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure CartesianClosedCategoryPackage where
  finiteProducts : Prop
  exponentialObjectExists : Prop
  evaluationNatural : Prop
  curryingNatural : Prop

structure CartesianClosedCategoryEvidence (C : CartesianClosedCategoryPackage) where
  finiteProductsClosed : C.finiteProducts
  exponentialObjectExistsClosed : C.exponentialObjectExists
  evaluationNaturalClosed : C.evaluationNatural
  curryingNaturalClosed : C.curryingNatural

def CartesianClosedCategoryClosed (C : CartesianClosedCategoryPackage) : Prop :=
  C.finiteProducts ∧ C.exponentialObjectExists ∧ C.evaluationNatural ∧ C.curryingNatural

theorem cartesian_closed_category_closed_from_evidence (C : CartesianClosedCategoryPackage) (E : CartesianClosedCategoryEvidence C) : CartesianClosedCategoryClosed C := by
  exact And.intro E.finiteProductsClosed
    (And.intro E.exponentialObjectExistsClosed
      (And.intro E.evaluationNaturalClosed E.curryingNaturalClosed))

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse
