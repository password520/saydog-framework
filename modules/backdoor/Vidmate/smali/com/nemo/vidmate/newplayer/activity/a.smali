.class Lcom/nemo/vidmate/newplayer/activity/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/nemo/vidmate/newplayer/activity/BasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/nemo/vidmate/newplayer/activity/BasePlayerActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nemo/vidmate/newplayer/activity/a;->a:Lcom/nemo/vidmate/newplayer/activity/BasePlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nemo/vidmate/newplayer/activity/a;->a:Lcom/nemo/vidmate/newplayer/activity/BasePlayerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nemo/vidmate/newplayer/activity/BasePlayerActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    return-void
.end method
