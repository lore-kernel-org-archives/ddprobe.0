Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172BF1A585
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB+Lj+OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849DAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699825096;
	bh=y1P1RlJlPpdEdEdimTO/2WHu1oAFkimPrChB9CPxjhA=;
	h=To:Subject:From:Date:From;
	b=VB+Lj+OCElr1NI5ayVYaSi0Z89itwOxgGKENMt1uOvGEtqiuZ5A7qdV+TgJnMylf6
	 6p6ahjGjXH5LGj/xE9xZnL84J/X6t9r5xDwqY1BFjpAFKd032pIDL6h46bhy9NTmAe
	 8uzqQm1XrxfrVVEWLzXY2w5M3vbsFCIOuzkmTblsFgiNGuKgWTlqBNWXuosxpXRrRx
	 0btfwujuobH1Jm9OsrHax2loIXXrlVgDghBMYG5iZ0an5r8lnfa6ChKQINw+lqe3Fs
	 XQroI7/hy334DRsx3kSENff31tSdTbrQtuaTg3Fglk7fBSnP9HPjfFSKSx/oIEJn+I
	 DgYUv2zFZhhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6352BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169982509639.14000.15803660090133925667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960050d90f76c69746cec87b110c16958878eb67cc6ea634c86daf46565ef265
Date: Sun, 12 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699825096
