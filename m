Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECE43D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7A2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668787854;
	bh=K5Wou1j2cgniLTfhkCqYnl0sm0CrHQDl631y7tF9+3k=;
	h=To:Subject:From:Date:From;
	b=t9T41T3ztHpf+H9/5WsSj95qXkgjGo0h7BaEWg3AD6DVACDX6AjRY7mUz19ixWkfT
	 yduRerE0TeRx13lV/iQIh1CwZdQRAAdEg6Zm5xGIXkNK6cazuFRZY4G58wjlUIdmUE
	 ZsHKRjtBUmTPiUHwbePtku7/4gPiAqI0F/Gkgzh7PxJ+Sd0dxiuhYGXg9ljUwJ+g2s
	 hdRyi3TZzNyqc4HOTLKTj4M1s/HEzcoumg6LQ9itmJ5JU20gOVYRK3wXgepj8wASc+
	 TaYJ12BxKZwZY1ISYwV4yxDIMf6JZj3aSFAGtvO8jZQh7fimfTiazg14qLPjGXdb9Q
	 bzthUnGl9kHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54204C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878785433.13750.15768861626569447245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6966293e85c3a7c09e764ac18f353a7970a64ff18daf76705e97da7b89114ec
Date: Fri, 18 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668787854
