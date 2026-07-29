import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure AdjointFunctorsPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorsEvidence (A : AdjointFunctorsPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  unitNaturalClosed : A.unitNatural
  counitNaturalClosed : A.counitNatural
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorsClosed (A : AdjointFunctorsPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities

theorem adjoint_functors_closed_from_evidence (A : AdjointFunctorsPackage) (E : AdjointFunctorsEvidence A) : AdjointFunctorsClosed A := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.unitNaturalClosed
        (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse
