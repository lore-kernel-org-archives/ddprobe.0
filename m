Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9567322A
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB9FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669731654;
	bh=cC+PKXgZ5ExZcsSfzPhX5WfN7uQX8feCMmWRzKFuJgw=;
	h=To:Subject:From:Date:From;
	b=NMpTP7xYmsFLgr+KxRInun43d6+ImwICev5c5Shsn8MxIhXxDgif3939aEA5r+vfz
	 rFfBIaONNNcFjl2SgCL2nUBR02+8q+jvayR+r5/Y4GDGS4CNqktl+nb2ApJC12zwFF
	 flfTuJ8Znutc5Cs9Cr+mCFcCXjBWlXKKSNJ7nQDAhxXdSf+5kq2i9cEiSPXaVx4lV9
	 XxgmFTMImCGBm4PMX0jC5wkW0SQLY0LNE/B2CirVUR8r9Tskf8jPgh5E8HzUpAtTqu
	 ehieE3jn5fG7O4/Okqt/CWnfr2MXHt7i5n2tqhr9Fh4n+5NoXyXci+pHQc5Myz3pjn
	 bgfqDdwdiR3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54943C46467
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973165433.1704.10095618522819862676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a5d21ffafd08a456a95ab5837aade7fbffe8abfed1e6119fdfbb9379a57dfa
Date: Tue, 29 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669731654
