Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E477F0
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03F8BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679978586;
	bh=L80QjqJT2okA8rqm4x6cZ9yWq5CSJdfuxuyfKeoHRPE=;
	h=To:Subject:From:Date:From;
	b=Sc1M/E+F/SptAiuDz05W4uvWLMReshqI5K/FLGlUqVi4G/tx1rHcNVxy733Qe0Hlg
	 /+ApZbBqTJJsNbvZoQRP0Pcdr3vVMvygLXorD3SfVeEhcSVPew1dXOuowdACQeYFZB
	 f7ZeM+eI21yojaUYSSSZQ69PwEcDTo1habh+yD8AkWMhdC88YUyqebDG6UXSbQQ7IP
	 GBEySycGN6ZJQXwShe13wfk2AffclCqn7KQSAL2zeZOZb79mGZwCr/OEcC6/U16xEf
	 NKZDr830j2rJ1QfCfpQPFVumSXml0QQBfhQ8L/VeC0W15dcxy1h7Ay7aE29sggPp31
	 KbnwAvEQiHaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDAFC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167997858580.3548.6145717649235876545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8eda9c6badc60b73fbcabfd58ecd700fa53adcfade5173806ba63e78be690a
Date: Tue, 28 Mar 2023 04:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679978585
