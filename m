Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9C1629
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 03:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDECDC433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 03:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694229248;
	bh=BoZWxMBrnspBKXI4+q4rwPfwZI/wtB6G/HAOIjtPEDs=;
	h=To:Subject:From:Date:From;
	b=dgCCQjGUXfs19n8Il3bwTKDJ8hYDfF2AUP+QTJa1G8ZWl+h+m4cFls9JX6dx9s0Z7
	 AVR54Z/d4YKcyLEnVCu/grA+/C4zDXBOGW88NuXzMMPQvgyAgrcaoIW6G74nGGFwLS
	 aNwLvAEQ2cP2IU76F9jMVn6IIbsrFPCYSWUM3n6R2dhhWrU8iY9HdiKmrcolvvnD26
	 bUK1FJ3eDCvGGFlecQ/gYhGBlxAK70YUMiAiuElZ4k0KPZOxjGCEAlgj8iAuTkdav7
	 WDZDjFdDIuzEHStibEmoShKLKDLbNdmexpcblWRRtWGj32PJ+0hiOpeuP2W+BfYjHK
	 cORebTEXrc8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CBEEB57D
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 03:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169422924866.8733.10390097123404613166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debe4460e1bfd3a43fe453682a7d95dc70a6deb256003cf1c034408892c00729
Date: Sat, 09 Sep 2023 03:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694229248
