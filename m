Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B1374FD
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAjveYvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8076DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701285496;
	bh=m/b/Tr8CiP9slJIVmrLJSPV0+rdne7oonVs8ElIaOwg=;
	h=To:Subject:From:Date:From;
	b=mAjveYvrlNyOrNCjCntZWxuO+kzM+fbB6PfPtoJ4KqA4Audxb0zRhMHLrHoTAeX6U
	 yxg+worbNTtCrj1noEXutypJGvgo/9j9Bh5opC9DqDm5tG+XVHio2DIXLlUeN7OcGw
	 RQHo33U9wQG7/tLWIeBdzO0JhuHu/F/Bw4rdOl6iF+rbAj13LgkxcISpmeDgeQWsZK
	 2PuznfANIpZfpmVUh+FWubqbmD/QLbbK2u63ogyiKHrtqOepU93Nt7GwoQi8Oyl9uo
	 wKhqKdN1SalhX5amnLoeyC8OrYfIgA+XXRR6SOYgfljfJRuw7Mj6ggU05Ru3g2a0Gp
	 YAX9ILZpxBxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6145FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170128549639.2079.6639115653257750529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7413420af7eff09d6b5b00fe23bbbfe6f5d5f234deb7860a5fb9a29e294102cb
Date: Wed, 29 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701285496
