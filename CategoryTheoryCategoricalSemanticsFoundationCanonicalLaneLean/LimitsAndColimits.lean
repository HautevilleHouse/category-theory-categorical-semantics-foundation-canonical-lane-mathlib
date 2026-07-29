import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure LimitsPackage where
  productsExist : Prop
  equalizersExist : Prop
  pullbacksExist : Prop

structure LimitsEvidence (L : LimitsPackage) where
  productsExistClosed : L.productsExist
  equalizersExistClosed : L.equalizersExist
  pullbacksExistClosed : L.pullbacksExist

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.productsExist ∧ L.equalizersExist ∧ L.pullbacksExist

theorem limits_closed_from_evidence (L : LimitsPackage) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.productsExistClosed
    (And.intro E.equalizersExistClosed E.pullbacksExistClosed)

structure ColimitsPackage where
  coproductsExist : Prop
  coequalizersExist : Prop
  pushoutsExist : Prop

structure ColimitsEvidence (C : ColimitsPackage) where
  coproductsExistClosed : C.coproductsExist
  coequalizersExistClosed : C.coequalizersExist
  pushoutsExistClosed : C.pushoutsExist

def ColimitsClosed (C : ColimitsPackage) : Prop :=
  C.coproductsExist ∧ C.coequalizersExist ∧ C.pushoutsExist

theorem colimits_closed_from_evidence (C : ColimitsPackage) (E : ColimitsEvidence C) :
    ColimitsClosed C := by
  exact And.intro E.coproductsExistClosed
    (And.intro E.coequalizersExistClosed E.pushoutsExistClosed)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse