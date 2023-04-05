Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E63C950
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E21C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680733025;
	bh=N88JzZvYjzJV+jGXNKcX402/ebqpgjEulFUSlqAUyTw=;
	h=To:Subject:From:Date:From;
	b=pw0AbfpLry3IuDFf7WlQgYymD9mZBBgHwBUG9Xm4f+BpUmdBDZuYb8jqtKJBCt0Ll
	 Hs2HyqZKSpKWOP8tV8ohpg73382QiVgMm1o/Cibw5fHp8132hl3N5WVVSQ+GhyjQ8K
	 tMGaUr8TiJoIzzwr1cFwfthNsl8r863oDpIiiQApFuic7ynGB6isUXKsQR1j3PxTWZ
	 T8Qn3jvcVqmKFIOQsdJypqXqZ/xXChx/ZXBTqKwM0M2T5KuI0cLdvtHDlcjaNAXDGK
	 s8WmHmSPbR2EecS0DzFinaYrzdPSmvfb+wl1qAZ63Nuscsavll89HzfX7PJyG6XEiq
	 8DwyEvEwPlcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C79C77B6C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 22:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168073302578.18555.2379293422196549520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb27e02eb7b953f243f1cfe51678bb8b40664e20b2a99834cf9a010ea7a8418
Date: Wed, 05 Apr 2023 22:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680733025
