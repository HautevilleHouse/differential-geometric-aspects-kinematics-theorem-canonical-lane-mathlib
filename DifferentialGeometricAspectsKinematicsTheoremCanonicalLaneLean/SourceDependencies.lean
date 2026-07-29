import HautevilleHouse.DifferentialGeometricAspectsKinematicsTheorem.SourcePackage

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheorem

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/extract_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
   { file := "scripts/extract_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 }]

def sourceImportDependencyCount : Nat := 2

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 2 := by
  native_decide

end DifferentialGeometricAspectsKinematicsTheorem
end HautevilleHouse