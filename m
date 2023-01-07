Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D043185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6614C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673133087;
	bh=Fdfed8PX/VKagVOYLWamwt1SM8MXe0jx2BmwthPwVNg=;
	h=To:Subject:From:Date:From;
	b=Pa8N8LFY83NjegEclLan6u1jMyY5jeYgUFT2xPUNxmefXlhk8Dbuuj9AuvWAafhBC
	 iqlZ4Oa/Rw/6q/doXEwQj4XT3VLnFc2/wdCQW7kv3KtGIIbDacoH1RLbuIK2hJHkDI
	 WT3nXMTB485lmOM+282Kcit0sFYwMvO0B32vQPVs3hSsVhfpOm7Az+Mu7IvoGswKva
	 z/tKWyom8mKm+/W+Qbm8KGsk0TTTF2jno0mZ+xk9l6CMqEqTpC4fY+y1I1GsMY1G9M
	 UdmLfHbqUXtEgMseY/dNeI1RyOm/GwoWdc6C4DU9EwuflTXtQIDzEbsHZvRRmFxqBY
	 OSjFZkzaPMQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7796EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313308745.3787.15735421776851039458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb4bbc1bc93e1cf0bc995aad90c17289810eaf119b15c96115e271973d93782
Date: Sat, 07 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673133087
