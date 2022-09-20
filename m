Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFC6748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81535C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663696253;
	bh=nCW0y8dukR1qjb/Tsg/jYrPeQDiD4EeZqSleS5jzxgY=;
	h=To:Subject:From:Date:From;
	b=OvFaOwCmkp11k8P/bLOj4CvbXmIbqfAOJTDsUe3BVpT5VrFS91C4fPUJ1RVAHTX1A
	 7S0WZN7T3NAxskAn4duA9Da6E95YzwR9BT2KyaVx4IN05lZ+kpFB40hwLgqxQlvSWm
	 i1ulWTGMsx++sVVOtyMfGXAYimWSvspE2Gri9MmhF0sa2rNHSPkXx/1KM8g6GkFsPX
	 mBl1pB+p0vc6FS7CuyFLHB/3IXzLBad9yeigVhRXSNA6+9NC6fR08k8+nUMLjukpnq
	 t3kz4fygSJG7WeN/0Nzo2V/dtp39ZtBPtLGZsruTYisXeoq+ylcjUyqBr6ebVIJpeE
	 NBmEkka8gLRlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D40DC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369625337.766.9170671538873067367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176943279ce0b83aff85ccfeaeaf54c0368b62ce4e9c8186d9c58649fb115602
Date: Tue, 20 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663696253
