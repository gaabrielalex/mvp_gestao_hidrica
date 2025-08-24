// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leituras_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leiturasControllerHash() =>
    r'dc7c57121501580242448dc89f0eb0b98768be7f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$LeiturasController
    extends BuildlessAutoDisposeAsyncNotifier<List<Leitura>> {
  late final String? talhaoId;

  FutureOr<List<Leitura>> build({String? talhaoId});
}

/// See also [LeiturasController].
@ProviderFor(LeiturasController)
const leiturasControllerProvider = LeiturasControllerFamily();

/// See also [LeiturasController].
class LeiturasControllerFamily extends Family<AsyncValue<List<Leitura>>> {
  /// See also [LeiturasController].
  const LeiturasControllerFamily();

  /// See also [LeiturasController].
  LeiturasControllerProvider call({String? talhaoId}) {
    return LeiturasControllerProvider(talhaoId: talhaoId);
  }

  @override
  LeiturasControllerProvider getProviderOverride(
    covariant LeiturasControllerProvider provider,
  ) {
    return call(talhaoId: provider.talhaoId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'leiturasControllerProvider';
}

/// See also [LeiturasController].
class LeiturasControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          LeiturasController,
          List<Leitura>
        > {
  /// See also [LeiturasController].
  LeiturasControllerProvider({String? talhaoId})
    : this._internal(
        () => LeiturasController()..talhaoId = talhaoId,
        from: leiturasControllerProvider,
        name: r'leiturasControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$leiturasControllerHash,
        dependencies: LeiturasControllerFamily._dependencies,
        allTransitiveDependencies:
            LeiturasControllerFamily._allTransitiveDependencies,
        talhaoId: talhaoId,
      );

  LeiturasControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.talhaoId,
  }) : super.internal();

  final String? talhaoId;

  @override
  FutureOr<List<Leitura>> runNotifierBuild(
    covariant LeiturasController notifier,
  ) {
    return notifier.build(talhaoId: talhaoId);
  }

  @override
  Override overrideWith(LeiturasController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LeiturasControllerProvider._internal(
        () => create()..talhaoId = talhaoId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        talhaoId: talhaoId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LeiturasController, List<Leitura>>
  createElement() {
    return _LeiturasControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LeiturasControllerProvider && other.talhaoId == talhaoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, talhaoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LeiturasControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Leitura>> {
  /// The parameter `talhaoId` of this provider.
  String? get talhaoId;
}

class _LeiturasControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          LeiturasController,
          List<Leitura>
        >
    with LeiturasControllerRef {
  _LeiturasControllerProviderElement(super.provider);

  @override
  String? get talhaoId => (origin as LeiturasControllerProvider).talhaoId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
