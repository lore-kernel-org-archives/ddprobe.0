Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D151374
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7225C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686854348;
	bh=kidHmcFdV3oIVl9EVwCQBikpXKy9LHFAIrBeNxnp5gM=;
	h=To:Subject:From:Date:From;
	b=LTt6ZXF8NlNGGNlImDcFUlANGQn5eoi71s1uyWBRFboFoDj1Fbe5csLeDje6EX1ip
	 oedl8o/9XJ3DNw3h0+FuKgJXZ5CYpnp8TN/+Zlyq4LzaQXLLwtnDMu+9m/HNOhllzG
	 0hEWMptBHbzeDfUurLyJzPqSI6vfDrzQFN5xTqLHoYllYnYCNXF6UXrJcAzzAEXoIe
	 F2Z1gTilVCxhmfCGzw1EwmCXeM449BEodAwTYQhp2ksl6xR6c+wcMoQ8Lc1TPqVxDd
	 I36ojxxhajUt0I/LRxTa3rCFBgzgVRyzL407w6KDIVRHp0Wjd7sIK5Z5kAmEe9VU88
	 FvDNdAf7YP3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC0EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 18:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685434870.21415.14805617959162197415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550ae6f642f5a6e8418bf0238334744ba7d7214b820b5c8fa54062cd3ca59cb8
Date: Thu, 15 Jun 2023 18:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686854348
