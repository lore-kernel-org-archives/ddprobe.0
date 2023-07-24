Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E910011188
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 21:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF101C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 21:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690233728;
	bh=YFiAIRzdkNWqOAknCVsRurjwVx8HTyIUvAQT0A5p2FY=;
	h=To:Subject:From:Date:From;
	b=Tk6Ng3uezFbpKPNy2y53YXe0hnoxEE1G0PeEovnDK2eyim2vG6KRGpOItw9KzInC5
	 3HTNed/uIWpDlxwNA/yR2KcOefQpQ6nF9LMpIg6fz+VI5M0ls0Aq1JrldiHG7GbQqN
	 tKLjqKQiNMTQ9+8V6n174XhIKVDx9mCUj+3cQzCq2uptdx3txr16YU+xzijIfDaNpM
	 RQ9KbFQhVFY3MUMknd4xomIpYSHfJcT109nz5VT7z17rt/3q0KefAJfzRpztLbe1vJ
	 rn8cADN1Z+yU8WNEeeKUutSXi8E5u0D8ZBgYSWZ2X78vahk/TjRWsZj8iUOvErij+T
	 P7EZABHWItIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74BBEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 21:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169023372867.27713.1354054178819714187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3285256d2dbd04ee707edbd6d62b6668a5fc99b89c89ebc7721f26895e81dbeb
Date: Mon, 24 Jul 2023 21:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690233728
