Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77207E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BFDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668219054;
	bh=tnVESqGVePRmpqnfwKcV0R7h0Ucw4QbsIBaVA6oxA/Q=;
	h=To:Subject:From:Date:From;
	b=PVUqbWjYag+aL9dGMdqiqLiLxTmpfpsL9TGtdPlzU68pHOLtvCMF52M4YBKAO6bD4
	 hZiS81AK4Un8YQLjMy5XymMma+davzMFl5XMFNRx/TiWSWxCHw0EkXMApst7BKpV9q
	 myk8OCZYFvL6f/Q5PpD/7v5fm+yxOloYkJAqSMgR4ZA3h2CVrtUlndMMCPU9DVntVT
	 H4GMYo0haf1QqFNEsyN98+yHsaGudkZz9f/U/6opOWSSTDlYUmNfX6pjLbfmsN5m+m
	 WGwEzmnvGI7V78RKYA0KO0dyw8EcTMq9xhOZgQScFKM/QxBvnmSRxtMbpqh+2EwKyV
	 ryjfhCBlwxtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D62C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821905439.11875.13479844701256283502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4072a7199e0dce47165e8cfc37a754aa2bd2d948c5cdc5ed8fb7dc25da62888f
Date: Sat, 12 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668219054
