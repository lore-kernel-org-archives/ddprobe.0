Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8167136A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD38BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690699328;
	bh=mbQDFMzLAakUiVDBgCUncMDJqkyoenkc6fNcUAKelmI=;
	h=To:Subject:From:Date:From;
	b=sF09PYxV6Zcis+DMTSN2h+mHu/vKSgqMKvngHqa6wsluUG6lzwX2qpEOUoIHy545F
	 BRmj9GB8XKxLMhvyxJ52xLJQweNEndCSnnfJaKTtjvSHndvF3WcQUXKWOZphf9IFFU
	 lOU6qi4+vXWyz1vPtU06WCpEiXbOz202KoLddzXlUhiNNpOCpeZa/BxPR92RQ7uia1
	 g5X9q73TLzOPJCOzhwVzh+K6Dg0TLQ0Jq+PwHKefMYSDdwZOWp12jBhur4gQ2iueiS
	 Z38ZxAbnYHk+9Vdwohf9yCDXevuksQf88/fxPQBIDktEU2ippXEqZg94l2L5BgPcL7
	 vKdC24GCbxJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60DEEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 06:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169069932866.2717.5962647878178400786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bacb1a9fe95c1c316c5c71c0a9054935a72964104c0a10c81dbc182715c558b
Date: Sun, 30 Jul 2023 06:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690699328
