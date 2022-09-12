Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB0E7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1DFC43154
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662956453;
	bh=78IDaFQad2AU4kvKmFMkeHNERm5+r3GOoYYydmBUZuE=;
	h=To:Subject:From:Date:From;
	b=InTLg67CLl7mQp4yeTnZyMuBVF3nS36iEHsGCfIjsRN+g3w8zaAYsfadq0QTvpLBi
	 KCrqTVhICN+nsFI+T+5cDp/mNvf8OFK9F/KaiL2gJPF0y73gwaFSpjBcWzIJeqSW7i
	 H1S8yd5Wyf4cg4EgryTaBSlhpz/u4VJrSIkYqJKQho4xgf7la4XEg+38m+goCixiGi
	 dGlsD5wXSFHaILAT5dFiJYUkY9BHakXb4KTl+zdBgjJ1DnpPeKpPMh3+654wgBYh5t
	 dOhaOvHu+kL3GL6g1PhhHqkTx5oMeCFiA8lZj5+YwJ7h2cKtnTxdpx7VT8t6NlDK2n
	 ju0cLG/QztZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570A7ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295645334.9212.11895141564275938907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01e5167e3d1e55fca400e121778f54436537cc3757fcc79d0934c5327268d03
Date: Mon, 12 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662956453
