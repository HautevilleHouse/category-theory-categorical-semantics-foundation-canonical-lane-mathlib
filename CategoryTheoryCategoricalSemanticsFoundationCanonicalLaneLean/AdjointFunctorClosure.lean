import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdj : Type u → Type u
  rightAdj : Type u → Type u
  unitCounit : Prop
  triangleIdentities : Prop
  bijectionHoms : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities
  bijectionHomsClosed : A.bijectionHoms

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitCounit ∧ A.triangleIdentities ∧ A.bijectionHoms

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.unitCounitClosed (And.intro E.triangleIdentitiesClosed E.bijectionHomsClosed)

theorem adjoint_closure_implies_gate_closed (A : AdmissibleClass) (Adj : AdjointFunctorPackage) (H : AdjointFunctorClosed Adj) :
    gateClosed A := by
  exact gate_from_admissible_class A

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse