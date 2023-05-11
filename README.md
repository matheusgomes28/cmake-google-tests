# Skeleton GTest CMake Project

This is a GTest example project that
integrates GoogleTest into CMake in
three different ways:

- CMake's own `FetchContent_Declare(...)`
  and `FetchContent_MakeAvailable(...)`.
- `vcpkg` with the `gtest` port.
- `conan` with the `gtest` recipe.

## Build and Run with CMake's FetchContent

Apart from having CMake installed in your enviroment, you just have to run the following commands.

```bash
cd fetch-content
cmake . -Bbuild && cmake --build build
```

## Build and Run with Conan

Make sure you have `conan` 2.x installed, then install the dependencies.

```bash
cd conan
conan install -of "conan" . --build=missing
```

Once `conan` has installed/build the dependencies, configure and build with CMake as usual, while passing the generated `CMAKE_TOOLCHAIN_FILE`:

```bash
cmake . \
  -Bbuild \
  -DCMAKE_TOOLCHAIN_FILE="conan/conan_toolchain.cmake"

cmake --build build
```


## Build and Run with Vcpkg

Make sure you have a recent version of `vcpkg` installed, then simply call `cmake` with the correct toolchain file.

```bash
cmake . \
  -Bbuild \
  -DCMAKE_TOOLCHAIN_FILE="${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake"
  
cmake --build build
```

Where `${VCPKG_ROOT}` is the path to the root installation of your `vcpkg`.
