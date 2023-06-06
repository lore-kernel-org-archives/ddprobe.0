Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FC4360
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED22DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686026526;
	bh=CJDCaLrmGl7Crv5ywyu/o5HmAuZnKm9IwjZk5pvtfEU=;
	h=To:Subject:From:Date:From;
	b=mDTXivwHNuHSkpUxa7YvaIbdZBv/wT28kuDis/65uM5d/RYOY47fa/+YLzPfDg5gS
	 gbNK3IR6A4J50mykrX+rF8FHtiyGRHLCjVAPgvnGRhCerhPc6c28ubEcKS0cQ1iVa6
	 UGLZ8D0xJrdH1qqkVg6gLRSQL36irYnc1lPy95MuaZdKvwSxyeDIjVRKd1BDqno8+A
	 brpQO/fuaUMWZw4h5ng+qfFIt9ONGiIrIJLa57lGDEbtIPXa9yMnW6Yc1Eb8v3rq3U
	 eMnXvIQJD2su816rQTFvNC0SheQEnL7GWlBnz2WIs1YZYiXoKrWXm+hU0hovzC3FlQ
	 mFdlsPslKFmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8979C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602652577.23830.2800029177772968243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915ce9664f98e45c5637203620c04d26d6e0dee0a47e50af9186c66f060ac01f
Date: Tue, 06 Jun 2023 04:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686026525
