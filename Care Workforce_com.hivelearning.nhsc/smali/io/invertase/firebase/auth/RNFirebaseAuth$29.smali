.class Lio/invertase/firebase/auth/RNFirebaseAuth$29;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->linkWithCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 1318
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFirebaseAuth"

    if-eqz v0, :cond_0

    const-string v0, "link:onComplete:success"

    .line 1319
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, p1, v1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$300(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/google/firebase/auth/AuthResult;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "link:onComplete:failure"

    .line 1323
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1324
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$29;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$200(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
