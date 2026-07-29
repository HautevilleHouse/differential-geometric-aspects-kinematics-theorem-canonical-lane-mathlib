import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure KillingVectorField where
  vectorField : Type u
  metric : Type v
  killingEquation : Prop
  integrabilityConditions : Prop
  spaceOfKillingVectorsClosed : Prop

def KillingVectorFieldClosed (K : KillingVectorField) : Prop :=
  K.killingEquation ∧
  K.integrabilityConditions ∧
  K.spaceOfKillingVectorsClosed

theorem killing_vector_field_closed_iff (K : KillingVectorField) :
    KillingVectorFieldClosed K ↔ (K.killingEquation ∧ K.integrabilityConditions ∧ K.spaceOfKillingVectorsClosed) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
