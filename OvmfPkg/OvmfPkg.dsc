[Defines]
    SUPPORTED_ARCHITECTURES = X64 | IA32

!if $(ARCH) == X64
    !include OvmfPkgX64.dsc
!else
    !include OvmfPkgIa32.dsc
!endif

[Defines]
    !ifndef $(OUTPUT)
     DEFINE OUTPUT          = ./Build
    !endif
    OUTPUT_DIRECTORY        = $(OUTPUT)
