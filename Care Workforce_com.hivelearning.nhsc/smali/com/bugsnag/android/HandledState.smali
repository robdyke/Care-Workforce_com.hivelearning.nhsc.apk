.class public final Lcom/bugsnag/android/HandledState;
.super Ljava/lang/Object;
.source "HandledState.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# static fields
.field static final REASON_ANR:Ljava/lang/String; = "anrError"

.field static final REASON_CALLBACK_SPECIFIED:Ljava/lang/String; = "userCallbackSetSeverity"

.field static final REASON_HANDLED_EXCEPTION:Ljava/lang/String; = "handledException"

.field static final REASON_LOG:Ljava/lang/String; = "log"

.field static final REASON_PROMISE_REJECTION:Ljava/lang/String; = "unhandledPromiseRejection"

.field static final REASON_SIGNAL:Ljava/lang/String; = "signal"

.field static final REASON_STRICT_MODE:Ljava/lang/String; = "strictMode"

.field static final REASON_UNHANDLED_EXCEPTION:Ljava/lang/String; = "unhandledException"

.field static final REASON_USER_SPECIFIED:Ljava/lang/String; = "userSpecifiedSeverity"


# instance fields
.field private final attributeValue:Ljava/lang/String;

.field private currentSeverity:Lcom/bugsnag/android/Severity;

.field private final defaultSeverity:Lcom/bugsnag/android/Severity;

.field private final severityReasonType:Ljava/lang/String;

.field private final unhandled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/bugsnag/android/HandledState;->severityReasonType:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/bugsnag/android/HandledState;->defaultSeverity:Lcom/bugsnag/android/Severity;

    .line 86
    iput-boolean p3, p0, Lcom/bugsnag/android/HandledState;->unhandled:Z

    .line 87
    iput-object p4, p0, Lcom/bugsnag/android/HandledState;->attributeValue:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/bugsnag/android/HandledState;->currentSeverity:Lcom/bugsnag/android/Severity;

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/bugsnag/android/HandledState;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, v0}, Lcom/bugsnag/android/HandledState;->newInstance(Ljava/lang/String;Lcom/bugsnag/android/Severity;Ljava/lang/String;)Lcom/bugsnag/android/HandledState;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(Ljava/lang/String;Lcom/bugsnag/android/Severity;Ljava/lang/String;)Lcom/bugsnag/android/HandledState;
    .locals 6

    const-string v0, "strictMode"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/bugsnag/android/Intrinsics;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No reason supplied for strictmode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "log"

    if-nez v1, :cond_3

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/bugsnag/android/Intrinsics;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attributeValue should not be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const/4 v1, -0x1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "handledException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_1
    const-string v0, "unhandledPromiseRejection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_3
    const-string v0, "anrError"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_4
    const-string v0, "userSpecifiedSeverity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_5
    const-string v0, "unhandledException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_6
    const-string v0, "userCallbackSetSeverity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object p0, p1, v4

    const-string p0, "Invalid argument \'%s\' for severityReason"

    .line 76
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :pswitch_0
    new-instance p1, Lcom/bugsnag/android/HandledState;

    sget-object p2, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-direct {p1, p0, p2, v5, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p1

    .line 72
    :pswitch_1
    new-instance v0, Lcom/bugsnag/android/HandledState;

    invoke-direct {v0, p0, p1, v4, p2}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object v0

    .line 70
    :pswitch_2
    new-instance p1, Lcom/bugsnag/android/HandledState;

    sget-object p2, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-direct {p1, p0, p2, v5, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p1

    .line 68
    :pswitch_3
    new-instance p2, Lcom/bugsnag/android/HandledState;

    invoke-direct {p2, p0, p1, v4, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p2

    .line 66
    :pswitch_4
    new-instance p2, Lcom/bugsnag/android/HandledState;

    invoke-direct {p2, p0, p1, v4, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p2

    .line 64
    :pswitch_5
    new-instance p1, Lcom/bugsnag/android/HandledState;

    sget-object p2, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    invoke-direct {p1, p0, p2, v4, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p1

    .line 62
    :pswitch_6
    new-instance p1, Lcom/bugsnag/android/HandledState;

    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    invoke-direct {p1, p0, v0, v5, p2}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p1

    .line 60
    :pswitch_7
    new-instance p1, Lcom/bugsnag/android/HandledState;

    sget-object p2, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-direct {p1, p0, p2, v5, v0}, Lcom/bugsnag/android/HandledState;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Severity;ZLjava/lang/String;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6fd47ff4 -> :sswitch_7
        -0x69b939d1 -> :sswitch_6
        -0x5ed746f4 -> :sswitch_5
        -0x41fbf7be -> :sswitch_4
        -0x223630dd -> :sswitch_3
        0x1a344 -> :sswitch_2
        0x53739d1 -> :sswitch_1
        0x217efc73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method calculateSeverityReasonType()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/bugsnag/android/HandledState;->defaultSeverity:Lcom/bugsnag/android/Severity;

    iget-object v1, p0, Lcom/bugsnag/android/HandledState;->currentSeverity:Lcom/bugsnag/android/Severity;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bugsnag/android/HandledState;->severityReasonType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "userCallbackSetSeverity"

    :goto_0
    return-object v0
.end method

.method getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bugsnag/android/HandledState;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentSeverity()Lcom/bugsnag/android/Severity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bugsnag/android/HandledState;->currentSeverity:Lcom/bugsnag/android/Severity;

    return-object v0
.end method

.method public isUnhandled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/bugsnag/android/HandledState;->unhandled:Z

    return v0
.end method

.method setCurrentSeverity(Lcom/bugsnag/android/Severity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/bugsnag/android/HandledState;->currentSeverity:Lcom/bugsnag/android/Severity;

    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bugsnag/android/HandledState;->calculateSeverityReasonType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 116
    iget-object v0, p0, Lcom/bugsnag/android/HandledState;->attributeValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/bugsnag/android/HandledState;->severityReasonType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6fd47ff4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1a344

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "log"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "strictMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "violationType"

    goto :goto_1

    :cond_4
    const-string v0, "level"

    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "attributes"

    .line 129
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/HandledState;->attributeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/bugsnag/android/JsonWriter;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 134
    :cond_5
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
