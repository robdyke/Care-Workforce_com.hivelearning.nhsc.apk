.class Lcom/bugsnag/android/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "Violation"

.field private static final STRICT_MODE_TAB:Ljava/lang/String; = "StrictMode"


# instance fields
.field final clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bugsnag/android/Client;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final strictModeHandler:Lcom/bugsnag/android/StrictModeHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/bugsnag/android/StrictModeHandler;

    invoke-direct {v0}, Lcom/bugsnag/android/StrictModeHandler;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->strictModeHandler:Lcom/bugsnag/android/StrictModeHandler;

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static disable(Lcom/bugsnag/android/Client;)V
    .locals 2

    .line 40
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/bugsnag/android/ExceptionHandler;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/bugsnag/android/ExceptionHandler;

    .line 44
    iget-object v1, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p0, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 48
    iget-object p0, v0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method static enable(Lcom/bugsnag/android/Client;)V
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 27
    instance-of v1, v0, Lcom/bugsnag/android/ExceptionHandler;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/bugsnag/android/ExceptionHandler;

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lcom/bugsnag/android/ExceptionHandler;

    invoke-direct {v1, v0}, Lcom/bugsnag/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 31
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    move-object v0, v1

    .line 35
    :goto_0
    iget-object v0, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    .line 59
    iget-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->strictModeHandler:Lcom/bugsnag/android/StrictModeHandler;

    invoke-virtual {v0, p2}, Lcom/bugsnag/android/StrictModeHandler;->isStrictModeThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bugsnag/android/Client;

    .line 63
    new-instance v2, Lcom/bugsnag/android/MetaData;

    invoke-direct {v2}, Lcom/bugsnag/android/MetaData;-><init>()V

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/bugsnag/android/ExceptionHandler;->strictModeHandler:Lcom/bugsnag/android/StrictModeHandler;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bugsnag/android/StrictModeHandler;->getViolationDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v4, Lcom/bugsnag/android/MetaData;

    invoke-direct {v4}, Lcom/bugsnag/android/MetaData;-><init>()V

    const-string v5, "StrictMode"

    const-string v6, "Violation"

    .line 69
    invoke-virtual {v4, v5, v6, v2}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v6, v4

    goto :goto_1

    :cond_0
    move-object v6, v2

    move-object v8, v4

    :goto_1
    if-eqz v0, :cond_1

    const-string v2, "strictMode"

    goto :goto_2

    :cond_1
    const-string v2, "unhandledException"

    :goto_2
    move-object v7, v2

    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 77
    sget-object v4, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 79
    sget-object v5, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    move-object v4, p2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/bugsnag/android/Client;->cacheAndNotify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;)V

    .line 82
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 84
    :cond_2
    sget-object v5, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    move-object v4, p2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/bugsnag/android/Client;->cacheAndNotify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 91
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 93
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Exception in thread \"%s\" "

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string p1, "Exception"

    .line 94
    invoke-static {p1, p2}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
