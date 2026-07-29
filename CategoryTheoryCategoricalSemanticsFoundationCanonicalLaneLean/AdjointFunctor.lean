import HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure AdjointPair (C D : CategoryObject) where
  leftAdjoint : C.carrier → D.carrier
  rightAdjoint : D.carrier → C.carrier
  unitCounit : Prop
  triangleIdentities : Prop
  naturalIsomorphism : Prop

structure AdjointEvidence (C D : CategoryObject) (F : AdjointPair C D) where
  unitCounitClosed : F.unitCounit
  triangleIdentitiesClosed : F.triangleIdentities
  naturalIsomorphismClosed : F.naturalIsomorphism

def AdjointClosed (C D : CategoryObject) (F : AdjointPair C D) : Prop :=
  F.unitCounit ∧ F.triangleIdentities ∧ F.naturalIsomorphism

theorem adjoint_closed_from_evidence (C D : CategoryObject) (F : AdjointPair C D) (E : AdjointEvidence C D F) : AdjointClosed C D F := by
  exact And.intro E.unitCounitClosed (And.intro E.triangleIdentitiesClosed E.naturalIsomorphismClosed)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse
