Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADA42F23
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AEBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663180853;
	bh=NEb5VklZWWA7dcdxZnUApPt28sga91M8bVuxoh0fUYU=;
	h=To:Subject:From:Date:From;
	b=dN3ut2LDtfBPI/NOk+Gr0N+wkvXxEG60WguG14ij4kYquQT6Uh0p7li/tdg0/HwQb
	 3PC3bis5PFsj8tsAfvVXYwDi9TTIXvXL8HZFrZo4f3I22YDne1ahnXKgTmQWcJkNPK
	 tyPC/OM82B09BaiDZU2S+cLKLabXS8SXn0119yVog3hskPmz6zO3uFSqDmcu7kVERC
	 ptuLwJbpWNSo7dJ7G6xSoGfcPUmVkzkM1Y9fDovEQCSLHioVY/qhtradLus1/z7rbp
	 U8VAt+U0loaFcuosQisEMOgE87SaWmGTHqZN7nFVQE8uLHt+MsHMp545PtdKkbt6qB
	 i7dGM/b9yxb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500B9C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318085332.27532.105813399464227388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c392f145e09179570fb47f19234f06d92e52ea8c0d7a7655e905c8643bb3b44d
Date: Wed, 14 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663180853
