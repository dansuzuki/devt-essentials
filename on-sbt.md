# Notes on SBT
1. Adding resolvers
```
resolvers += 
  "Sonatype OSS Snapshots" at "https://oss.sonatype.org/content/repositories/snapshots"
```
2. Excluding scala library
```
assemblyOption in assembly := (assemblyOption in assembly).value.copy(includeScala = false)
```
3. Shading
```
assemblyShadeRules in assembly := Seq(
      ShadeRule.rename("org.apache.commons.io.**" -> "shadeio.@1").inAll
    )
```
4. Add depedencyTree
```
addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.9.0")
```
