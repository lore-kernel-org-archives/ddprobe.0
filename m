Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06716A5A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B228C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673772087;
	bh=594GdBYTD8+Db1vvb2Yh/TCDnIBwUAHfl7l5+Q8K9tI=;
	h=To:Subject:From:Date:From;
	b=ler/jC7qvPPwRomKsDbcYvBNYpY9c2AwBP0xhRoLdEpCcFPf5jHd1D4D3cIlr3Y2C
	 qdrWrgo0G/YoSe65SUJz9vI03wlkvN7KZd3yOGcTU/dHL0TYUvbSENJsrrAhLYZqL3
	 IVH9HdrlFs1lwwtHwaJCsiSTJ9PVywP7HheS8cMu62GVkeZ+Re+nYHAlhHfLnvsbqq
	 RTpJ0GUlyMho/Gx5ujmMRm+THZDUGQVed9ATqqTCnJFl18AEdYpx7jzFfntSwU1M3V
	 3Momx7Y5SXtcLto+bDSAkAVxOV15tNKtRcSTepBDG9fpUnT/qRtDcNTppCou7pkg89
	 QTvhdORl7pnDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 743F1C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377208743.5318.14299817220127748416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0017977aa22ef61a25c5ee29e3e52f31348ce03fb3025d26140b36e284b520e
Date: Sun, 15 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673772087
