Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67A47C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67055C43470
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670225454;
	bh=n18l7gaok++zXveEYR7dqXfze7865EiP+ZdIJI8k2ds=;
	h=To:Subject:From:Date:From;
	b=B24NX3Ky9zKnka9+yLEnx3u/7ZH65xK6k8N7xM/sP4/AM7UYxJJM0Rg0tEe4UHG3d
	 vb08Yd7X5h/l3fbw5unZ1C2rGav0eWU0CoSKhr91KjLFv33DXBKenK1nTvzWOp+Je8
	 LV78MZiwkAR5gvkTBmybGp1YN3oYZ/Aj6H4FCjCPSqSb+aAogIP5m+DmcNQzKIkhb+
	 K8bgOnap3dCd9mYfm66EzuFHfC1ZT0K7SNNK0glwTLxDn7AXcdgLJAaix1eT+Qvgmq
	 tmJRC+0tgQTPEjJr/3bngDfw8HNQo/KtIK1EiKZ7GsqOw7l7E/mRrkQPXhAmTLWkIJ
	 7Hn++dNDB16XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A4DC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022545432.6375.14812532801441891667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bd453fb6842f7108b5e843a6dc44915d96fbee7dcd7bcfd573662729c18c8e
Date: Mon, 05 Dec 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670225454
