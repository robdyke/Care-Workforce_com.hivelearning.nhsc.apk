.class public Lcom/facebook/react/NativeModuleRegistryBuilder;
.super Ljava/lang/Object;
.source "NativeModuleRegistryBuilder.java"


# instance fields
.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 26
    iput-object p2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/react/bridge/NativeModuleRegistry;
    .locals 3

    .line 75
    new-instance v0, Lcom/facebook/react/bridge/NativeModuleRegistry;

    iget-object v1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/NativeModuleRegistry;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/Map;)V

    return-object v0
.end method

.method public processPackage(Lcom/facebook/react/ReactPackage;)V
    .locals 4

    .line 33
    instance-of v0, p1, Lcom/facebook/react/LazyReactPackage;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/facebook/react/LazyReactPackage;

    iget-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 35
    invoke-virtual {p1, v0}, Lcom/facebook/react/LazyReactPackage;->getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p1, Lcom/facebook/react/TurboReactPackage;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lcom/facebook/react/TurboReactPackage;

    iget-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 38
    invoke-virtual {p1, v0}, Lcom/facebook/react/TurboReactPackage;->getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 41
    invoke-static {p1, v0, v1}, Lcom/facebook/react/ReactPackageHelper;->getNativeModuleIterator(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/ReactInstanceManager;)Ljava/lang/Iterable;

    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ModuleHolder;

    .line 46
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ModuleHolder;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleHolder;->getCanOverrideExistingModule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    iget-object v3, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native module "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tried to override "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ModuleHolder;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for module name .Check the getPackages() method in MainApplication.java, it might be that module is being created twice. If this was your intention, set canOverrideExistingModule=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModules:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleHolder;->isTurboModule()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method