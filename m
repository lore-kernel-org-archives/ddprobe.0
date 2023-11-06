Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C66D2E62C
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXdiawiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9035EC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699302496;
	bh=0Fqlr9/pSqUzOeL1zwcg4zSfmR9QmLrprzylX8Eu92c=;
	h=To:Subject:From:Date:From;
	b=bXdiawiqAZyXj4jKI2GApFkzB9iXDAhBGQYgUAJqmhJcg0gLIx15o9OiVKRjIyH5f
	 xESVGzhFSjWazmfjrjfCC0iOBpNhS+t/UsrRZ9Z1k2SBuxx/2bU0WGeYN6MicJNXz2
	 vblxDISgClUFVU0PTM+AA2NxuZT6e9fPvP4xWRCPCbU5u/5CgnQpp0rnwlS+NkIVvc
	 gnOdvW6s3Gr8aPcb1hc6zPsQhwYoS+p4DM2lHWCadCqCbKIxVqEZRNkdOrEWXBFbKx
	 /PpIX7OiYO3Uln+MWUFuCn8ORTPQBQjkL4rR/wofHMY+FHxnjubhG9DlMrSM6ImK2+
	 /o5KBIRht0s8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66265C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169930249640.20959.12950794581719295953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfdeff5e6a1228434d9956b926ce97f9246e1a769752cc322c3b8002b797bb3
Date: Mon, 06 Nov 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699302496
