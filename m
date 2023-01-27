Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9497B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06C4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674800585;
	bh=TDdUdoCGaIIuBdFKTbY0cbLENDXv+HxkWx6gxZmafi4=;
	h=To:Subject:From:Date:From;
	b=sYh4/z+PokElGu3NMes9+a5A3hbuGykGE6+9ZPcEycf1AHjpLJU7f851oC25zB+NJ
	 s7R0hMqVsXX20pTWcFxFaNj3P2d1CbiXzN/wIcsH3lKoz+lseL8rQgTPNB+thAX2Ld
	 XA0aUdqzJDmWP78JiHlZcxtXOPnF099IkI01tNwLqblzOPHnXBLx7czmSx2ZiE/Bl+
	 wofV55vf96y0WV/6nmtzrcVnD4KY+jgku0X9ZXhzMGOsjGT3uC0pyQGJeIGFgjp13W
	 iuZ7jlsM6Z4DMA7inudwYiSnxcoWj16vFVLuzVyb8aGL0og/wltp+tZjh+Uh9UD83+
	 nAi0fUS/pXCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9287C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480058574.10276.8494905838194890447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8722991e21224f926a1a5b42845cc65e8c3371a14d524febf03a3fb7a1c3c886
Date: Fri, 27 Jan 2023 06:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674800585
