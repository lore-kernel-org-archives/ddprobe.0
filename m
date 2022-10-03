Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B557017C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5BEC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664790053;
	bh=t5k0uaa6vn6JNvzvzpBlmXn5KIr3syXu0Q/ziYIkXAc=;
	h=To:Subject:From:Date:From;
	b=nkSXDwquZNrubAL9OgVV2WqOqkSboD2JHXIQlSxS70i9KdGFGNFJ/5OWIUuJA1R1J
	 FfSwE4SlrIf3N07z8XEENKczcRdYjegsBK4zZymM1zs4DWFpQdSaWcF326kiXRTMkq
	 +dovVGoeQMVkFqYK5zKS8AUA3P4bzrG3jjZS/SFeELCpQeZzYjWpdLDPoKmUZ4K2yG
	 THgJkV1qyZ/5MWR7Vt7nxrnSmyMg46FV42xqawoH6ooiPYmky7WuQBNJBTuF5FI0N8
	 o9mIsfP7uZJi9JExoIToWnq2ZZTiKkaOVFrU1p0qIchXGIEk43FNDf1Rsw4qPUsXRi
	 8rpRWi6QS98Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52403C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479005332.24754.16426440418246087801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e2ba7b27a1a6dacd882c2b8fdd47df0c99d4f90f5c354616eea24cd43f24c0
Date: Mon, 03 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664790053
