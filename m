Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751F253AF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2898AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682789766;
	bh=ts4Ug+UzqLxDiaAuxsfHh2GpU6TClDBFKXiZQdnGBA8=;
	h=To:Subject:From:Date:From;
	b=Kf7kflEkij5uWOVyMmLgvWdDHgTJF3+jibu14MQDjcYaBKvUSU+hDCqnTQ/dbZ7zh
	 Bt7G6wGS6wd7OtcAvfNYmhQiHwz1p469Za3ZjZV/u48VflQPEerrx4M/2V9iCeMfm+
	 ugf5D9sY1reeXZJlSIDxNxyZ2z76A0u2HGQtq+aK2BvPXZlvEJfvEyP8AMqmvWotCi
	 t7aoGu9y92x3lsaSfEQMHz3v4YUUd1BRQnkHfdpl34G6S9gnD+PUiCeyqrb90gmDIm
	 xhoeNo2CfaQD8JN/yrEOQGFkAXHwXK6bZZob1lKEqM1UNE6tlw0nSz5cLmhTvB7Gnu
	 ipOntJ6oogSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 048C1C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 17:36:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168278976599.18147.1118847545323917722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ca5d8bd130433e94c30b6bc5f0cdf64f9c58f17b2aae2f1e3507eaad37b94b
Date: Sat, 29 Apr 2023 17:36:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682789765
