.class public Lcom/google/android/gms/c/mn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/oe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/mn$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/mn$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/c/mn$a;->a(Lcom/google/android/gms/c/mn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/mn;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/c/mn$a;->b(Lcom/google/android/gms/c/mn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/mn;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/c/mn$a;->c(Lcom/google/android/gms/c/mn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/mn;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/c/mn$a;->d(Lcom/google/android/gms/c/mn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/mn;->d:Z

    invoke-static {p1}, Lcom/google/android/gms/c/mn$a;->e(Lcom/google/android/gms/c/mn$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/mn;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/mn$a;Lcom/google/android/gms/c/mn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/mn;-><init>(Lcom/google/android/gms/c/mn$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/c/mn;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/c/mn;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/c/mn;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/c/mn;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/c/mn;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/rj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method