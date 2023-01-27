Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B265290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8AD4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674825185;
	bh=JTfVwCOcylNTn2ZMiRqfn7qU2XmGOuwfIHJPy+1vtEs=;
	h=To:Subject:From:Date:From;
	b=kmmOMISb8cKkAc/NE+/WWALw8/OkQ7v9uD74+taGZVK+Cv/n8+SxPfVdskq6dv2w/
	 TwffCyNcANTOmNZUexdy4dF83aEDKkwMzT7aWN5N41tfeJlyEYfOvV3dHp4vB/OHun
	 SVV72xpeLcvTbt8+MoKJ0BJfyuUstTVlNJvlX2Yhf6KoTV+VMnxEuabnS1wHqNoF8s
	 FJMxE5K5aMlwltRyMS4pkZ1wlE8MDsI0lM/FgbfCu60rAQS61iuSzuhKqmBgIHxLKB
	 nI2FSo6nLMJUZGM07jwE5ztyQBTDmqYb7trjeUMvBUz+DjbNkT/IsDDFIKDAX0QmLq
	 mFoSHzoiV87Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE19FC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 13:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482518583.21695.15467160682419568160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978b413867303216f9a7bfcb2fda52e90451c4ded829507822b30d586e4008f
Date: Fri, 27 Jan 2023 13:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674825185
