import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse