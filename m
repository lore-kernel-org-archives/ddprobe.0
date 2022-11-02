Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22357B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753E2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667369454;
	bh=NGvzhbfbI6ROD3dPbdX4RtF0XYPmL1LSqDHSH/puMe0=;
	h=To:Subject:From:Date:From;
	b=rwJwlfJ0S5qtxdkSLnjQ+PWZRrjYPw37aJSm8LKTL0tMWZA7W+8YvDRZcExgyD2Zd
	 uITmdejvfbbbwwVqQpR9FcXVyOHqYkGEkLCuqDi1l7/CQBCzHyNqe89aVJEJMvHkAr
	 GSMp725uwEpFtoFzmgrMneL7GhfJ7nkH94zuop8TFsZzQqn5sXLYnbqJc6hghoeLHJ
	 CDcqLJbN0+kUesn5+eM54pzreqnzaorA0a7egoNPlP6xJanmGtbRQcHfZEwHDYMO70
	 cOk6GQMYeDqu2ixyKKILxKDub5mVNoB7kgjbCBpswOk+i+w4oKktazTYQE4SrgeeC7
	 6LNKy8KOqw8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588F5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736945435.8117.1326030391410783885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f061faeb19fcfc29d3fe33cc1719b9c82d3a74c262d3a4a9d13f4576d0b7ca21
Date: Wed, 02 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667369454
