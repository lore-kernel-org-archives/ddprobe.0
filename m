Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12686112
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812EEC433B5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665526853;
	bh=jvMw9HwroiViTabxLl7vI04pMzusY/0w8nNc5GEi3L4=;
	h=To:Subject:From:Date:From;
	b=DeufVl4TztYAyiHGcCKtnjot3yfZQBDpUiw6d1O6gkmog2Z5cRS6dOFLNcwXe1Vli
	 K0N6oU0GV1Qi0s/RFwESjxaL8Ahzwg3eDk0f/7MsQQB9ZihxAdiqcs9KJhUplqGqRX
	 1s4zXGUol9G6ELxeMLGGQafVbCuKG94yihJkbyHc5auY3i76wPyyXIWYTkyaxkuouC
	 BVmOZ8txhQ5TOtPgugb53gtqc01g9RH72xe7aZN2sC6mLfIS3N5vEDwCYKot23Y/KG
	 AOBGo89fLYJs/LNBvPNp8yuCJ9ic8zmWWDLxwBED6aIv+SPlrhJhvqB8kDQC9QAi8a
	 C5D6GKfSPqsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60845C4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552685335.18820.16204315645889492249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80107536a69b5e7d54192f4638c4e99fb2f75376b3d2d3c7ea23665f910e76a1
Date: Tue, 11 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665526853
