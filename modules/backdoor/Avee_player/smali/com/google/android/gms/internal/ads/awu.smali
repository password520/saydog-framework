.class final Lcom/google/android/gms/internal/ads/awu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/avt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/avt;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/avt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awu;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/awu;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/avt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/avt;->a(Lcom/google/android/gms/internal/ads/avt;)Lcom/google/android/gms/internal/ads/eb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awu;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/awu;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/eb$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/avt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/avt;->a(Lcom/google/android/gms/internal/ads/avt;)Lcom/google/android/gms/internal/ads/eb$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eb$a;->a(Ljava/lang/String;)V

    return-void
.end method
