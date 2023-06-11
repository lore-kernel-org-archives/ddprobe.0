Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD8F2CAB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2CDBAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686510126;
	bh=1Xfxnr3T1nBIdsx1r0hnuIYuPeBFt8fvYWCxb4lz80w=;
	h=To:Subject:From:Date:From;
	b=bwf0JjBuVdoZYyDGpzzeoIpPHutsQD02fMQ/alCRHN8w2P6gbrq+lEGWxsB2LYJfq
	 /ooUY2eEdcMxmPRP1FI0yyGgVu8jE/CL3g+fRjvY99GtN+meuUbEBVAoNOOwK2i2HJ
	 xMhSV0scLsVKgZMWij+2tz6QAT1lpONF+66+niwuP/2p1B6iLIyXBmJTrkQ+PGY2TB
	 RUT/dyYRQP/9PidWXkjgRtEVzz09QNpap/T6bkvXZM6dX22TpnRLj7FKVfoGZRAo26
	 3cZ0RhxuuZryLmZjf4WPlALwff74goWtLyW5nmDaQrjJqAx4LPkRFszU6WMrxsdMDN
	 I312R4eTneZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 009B1C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651012587.19070.183809883087014183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfea27bee3f339a32019f27cab2a5d33c25fb8ba1fa04f4c21f0c4aecddc075
Date: Sun, 11 Jun 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686510125
