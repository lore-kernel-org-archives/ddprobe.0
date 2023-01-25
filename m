Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFA210ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674615185;
	bh=ppGKnlPmQR/tICEne7xgS4+naw64BXQyi1J0yRW2tDM=;
	h=To:Subject:From:Date:From;
	b=PuO0xqLGFmKKi1oGxu3SDgUMKCLrexzdhYGH9JTW8g6nrG+BBp8bCiB8eQOg19d4Z
	 63PNCHwWKimgOcRWi3jhVKOOlQrFX8wf5ZeMKedw7hr6QmhtMsrzyUnMDOJTJEQ4yi
	 d/kUTd7ptzmnMS+6hHmTwA0QY2MeAD0WjyZJIo8IvEW3FmUic1GNECVCgunjL7RMcf
	 UtopzbigfgxL13aHLMdhX1BUUmDh6LJjcIdAOqc89ovc2xDZRy4O37pUa+AneuOFA2
	 puL3xBz77zx9W2t+QLmNf4u7lCIHhh1VY56GlYiti6gfTcsFQNqV9C2k3kvrbqFcZC
	 Wnc7eAZFqDZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA343C38142
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461518575.23888.13124958318374579593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc679022d68d1b063b3d049851c155386058f8cee617b5fa8a0345cc7021941
Date: Wed, 25 Jan 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674615185
