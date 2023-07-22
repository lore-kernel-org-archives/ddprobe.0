Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83DE8BE2
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 06:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE163C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690007528;
	bh=/WiKumbFl0z1kL5pdLQ4xaPMmrHLiL1aepiRllHSnSs=;
	h=To:Subject:From:Date:From;
	b=Uy/yuT2LCCBNJ3zk/atH1L143vi+GQekqzzqXBaTd8RXq6J1+bbrCbYIsBqyvyWMr
	 cQrgsEZh6A3zWRQuW2yK/TBfTJv91/XsJphzkwE7/wMGj62d1XryreZ6/SMqbVLMOQ
	 hSUI3HdR/rwB185DAN4vWnKPNlx92HJJv7P8OqzRT3VFjadOCWxDdpb+DINabDIxxr
	 Q8ovfAJ6gXhfCux1qA7xZdvRNTmuxgYYobCxu327ctNZV/d04Zos8Lafqk9unxhlgf
	 8pJG0WcPUwT2HhgbxzI80PSmYkNhfuAtM2mQBrCHS+CwVVhYkzNqsOi88hnoiG0l1j
	 fWtWTBMEOa/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FFFEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 06:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169000752871.5082.6551440129035128731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8910974cfb6c3d1e4c413a8effa8fda378902e864c51b16bb5299f0d39b2696
Date: Sat, 22 Jul 2023 06:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690007528
