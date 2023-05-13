Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E91E7E1
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 017ECC433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683937566;
	bh=R7PSr9gy2NdTmTsFSjlb9KWz2bDih31WA0CuWfab7YE=;
	h=To:Subject:From:Date:From;
	b=mA2FD4MQk5CR0bp2Rrc5RbW9QLgq9aGIzL1E6dAajx5Nn2RS/VvM3RarDp369CxgD
	 4/mVl2oIqFFLudDPORTrkWSEZ7+pVKXvyJal9gg5vaeByE5p6ziOP5QbUZ7vHB7+7a
	 5TKWzXa4p28zgrjOgOMuSovDmqIZeXBlPee7KQQoHBoUF/vkc/tLpJ6262qvi6MoFN
	 /KNE0VMhuTX5ORRCEPVwmQBW3LRQqF4bp4XDox0tSajv5RjMwAOhPnNJM6qOcMJvbq
	 cJg/gCni2s7xVGS234sOU9WyvrJk6Ytu73g/P0EpUXirNcltsJz5VmySMwVe5pVyF1
	 wXEh2RsXGI9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BF9C77B75
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393756577.9289.1137665547848040985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ef73b19c77af280edd97b51e86bc684f734adfabf93886200ab4e8a9034dee
Date: Sat, 13 May 2023 00:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683937565
