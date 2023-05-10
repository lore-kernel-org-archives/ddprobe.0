Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363EE174C3
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0398C4339B
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683736265;
	bh=S1MEPT/8LVdae/d2ftPE1rUc+IMNbeZJryASRvgk7Ew=;
	h=To:Subject:From:Date:From;
	b=NQYZ4XxES1D9xt2HzFQZHTA/kLJ/8e/cAAP1SRQOWsiPUzcz36SKQA4yMg7SGONoc
	 TrrGA81uV80I/skoBTTgW0jchZ2ssxLBCr+AsILG/tMrc9kmcpAGntaXtSxqfEKHxV
	 851ES3yxIHvf3sDgc9nfOjPxikiPN7PiYLyDAU0zl0ootCbSd8Lt9sBTJCjf9kxmv6
	 xEG63jCQuu9nCjfakmRiTdCmJ73oNqjYsAjhnstCL87Qxwh6FTdsOcK8Kzh2IRBo4w
	 lx2wTiclCXDRD+j0I0ESW7nTBLRKSO1wj/+0KStMisaQ+x3YKcSICb3KTIzVZbdv0r
	 EAnYD7+G1ZmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FEEC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168373626573.7845.3980401725115467527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaf6b4006b7a9b9420e53b9114d221ea4450440d13dd9c2b753bb108bad5bab
Date: Wed, 10 May 2023 16:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683736265
