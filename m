Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88855D2EA
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686612305;
	bh=S5XWCUa3AZoXCQhPvj/YH3vL4NHulcAyUaeNEbtRqhM=;
	h=To:Subject:From:Date:From;
	b=izXanpBqQ1yavWIzTBtb68ULU00sCi+XZl7u49FlnTEJ+mTrHVFzciHHVnUOtw/Se
	 zep/5sDYErycoBzF4fGKJ1zmaG8FfyT0NXC1UAauc6KDX1x1AuCOEz5OtxzIstdI2P
	 tRZFAIDKDz9iFPL91Y+IWG3JtxR24pvg0vy0Pd5fQgIkL13aleBH5JTUyD3cAwNTW8
	 LtaHCXW/Y9O74JXN9X/nzeLyHC454tZ2+Mg31jLunOIG7e/nYdOZqPsJ+0H9pY4rZl
	 uHfUPjiBIPY6Yr3kNkCWRoSLCd0fp71IDV2BvP9oTMgHN2y2T9cYV1UUs7cG/BVdVX
	 4fDybmgt+FOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B574BC7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 23:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661230573.19076.13712838908438067706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7858518f1ccc145c89306d06d06cf1381b5b465ebb43ea9ec0c1c46aac864a
Date: Mon, 12 Jun 2023 23:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686612305
