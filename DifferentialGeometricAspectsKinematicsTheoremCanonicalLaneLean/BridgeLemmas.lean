import DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KinematicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse