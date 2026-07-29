import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure AdjointFunctorTheoremPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitCounitAdjunction : Prop

structure AdjointFunctorTheoremEvidence (A : AdjointFunctorTheoremPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  unitCounitAdjunctionClosed : A.unitCounitAdjunction

def AdjointFunctorTheoremClosed (A : AdjointFunctorTheoremPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitCounitAdjunction

theorem adjoint_functor_theorem_closed_from_evidence (A : AdjointFunctorTheoremPackage) (E : AdjointFunctorTheoremEvidence A) :
    AdjointFunctorTheoremClosed A := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed E.unitCounitAdjunctionClosed)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse