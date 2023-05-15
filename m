Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A66EA0
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05A7CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684118946;
	bh=TdzbV5vJum53ZwYbo8eEIJHVJo7hyHQOtKY32vlIIHM=;
	h=To:Subject:From:Date:From;
	b=equleulzNomTNMcoWTNsrXnIVFxAxS7SXtyxuJYsIRETyrhKj1Ku5pjkNKbJpWZ1w
	 EnQ5+KePVCuKAIW3Bcooa2BzZnA1Qsn40dsUsuNPgANdbdf/Mqbw5saCL+/4VtxsUg
	 KYHN3QWMQp+p1hzw58otxoQdp4zcH60O97lg2uU+oZbjeSAbt4EnezFyUhCLnoDcIp
	 qbXgzGEnivElhFOlrEgQMxImIdaDeFhaIZLJIwoq60CTwTl6DXJk4nor5KUBkjr8Ke
	 gQ94M51iYbZoeANxJ0efYuM6ToP9t9E8uZdycmsbIpgbn6AtlbOG83Vknmn80nSRO2
	 5PN4kXPa/GI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB1BFC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411894588.31552.5176331926649723994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8aeb3774fdf09ef43d4b804341d003f2d6a7f742d1f2f614b7dde8861cc6b0
Date: Mon, 15 May 2023 02:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684118945
