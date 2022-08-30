Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C8B625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FBBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661887853;
	bh=sRTHsqiKLRMBWuO+A6j89pX+VpLl65tzPNjZoJE4rw8=;
	h=To:Subject:From:Date:From;
	b=cmOBgps1i26e6OYvOGKcFg+bGxIBDnR2sqDuy8/jvQdx3P7Ul37C2VG6DypsAnjWn
	 Q33Bbs0eNL9PZb1nSisqBg053hM19yxDIW4QJRhRahID0iy/ugJY2yUIGFKtvrrFf9
	 DjxRtTV2GAGoT9ubLOiosRz5bJSAtggDREu73EfHiktmd2tLueKuxMpjTCHfs1Pt7+
	 UPHXEIf5AnZV2ZbI25ZkPnJzVlnx72RYW/SqTG85yilq7WelnhZEGPIboVZa5PleI1
	 Kjy5zfxLs6i/APFsy2w8WBMU1TypXgaA94j0gnqj2zWMNj/yy99AllSlUpZNF+1AcR
	 H75lw7lmECZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5992EECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188785335.13009.14419298599140548303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a91ccde585a6c75dc174c8e23cd794a23abde53bb6b3d234ca1f23876ddd057
Date: Tue, 30 Aug 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661887853
