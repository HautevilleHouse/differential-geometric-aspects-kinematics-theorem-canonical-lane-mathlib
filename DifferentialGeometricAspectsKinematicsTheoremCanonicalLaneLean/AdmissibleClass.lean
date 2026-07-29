import DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : KinematicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  KinematicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse