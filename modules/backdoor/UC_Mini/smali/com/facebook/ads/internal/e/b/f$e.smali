.class final Lcom/facebook/ads/internal/e/b/f$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/e/b/f;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/e/b/f;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/e/b/f$e;->a:Lcom/facebook/ads/internal/e/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/e/b/f$e;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/b/f$e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/facebook/ads/internal/e/b/f$e;->a:Lcom/facebook/ads/internal/e/b/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/b/f;->a(Lcom/facebook/ads/internal/e/b/f;)V

    return-void
.end method
