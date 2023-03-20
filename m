Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77865184C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE478C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679313426;
	bh=QQYi84NIPWPGvLfuNFcmB5EdjpvWh4xIB4HqZLRlfU4=;
	h=To:Subject:From:Date:From;
	b=fNEr/CG3hdP+9DB0eluyXbSz1fuRAPteSeYiVBz0TtGytIkYx21/xRVw+n2OM1+iG
	 fxrd2w1Jr6slhDCzKQdR7aAedZJmQj5bpzBDfj1IAUw3BVm+MrErMSubT/i/5tHfr/
	 AiBllLV2CAbZkRjEYHCzBi2sSvUlRtOwn8RHKow//6XJ3V8sLllZRSSLIWfLzM1H2B
	 5yqOKaUg6ln+92a9ff/CmkzU2VRroxQsqFl4K/yiDRLjFtgKlaWHi/fTzDwtv70dW8
	 4FqdC2ALc/XDe7arjTHbZcjYxOU96HxkyuKIvUlyxA0lGhucEeM2Tk+PpEBO+XwqAv
	 CC0u7orMvYHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE269C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167931342577.26782.16013038258297405784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d43d972dc2a93b9d913bbc010b2f6208cae29aa91bef73f06d5412f5dfb6178
Date: Mon, 20 Mar 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679313425
