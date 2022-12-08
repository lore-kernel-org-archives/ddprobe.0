Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC59F33CA
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83307C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670517654;
	bh=sTSXzs0u6EsRY5ZIg8Iw1HsRnb43TRRnKz011OdNTkY=;
	h=To:Subject:From:Date:From;
	b=bGziFu6aowBYSq636QNMpDfrLJmciLIDKfN0WuYhWpAyIwjeuiPEGE48cy1LF2Zsm
	 qImsbvz1cbLGb+Hli/iskrci+ovy2GfKwgE1Sp3xSVaV9jtaGJSpxthWVUh31FqTRM
	 PeKrX0nNVPMH+thKRd94eeFXxMzJ1thMMM05mVSTN/pUYl0FVp0TSMWXvRBH/o02VP
	 gEjisaCyf2jYTolTQvFSZvCv3Q5Gs0N9yb1wfisI64R9lNHPPnucPEKzWFysXLJ+sf
	 M3AKhOCpTWP4NzBctET41BloNOZNl6BpgquH4L8QKCSSQ2K3OBA34XaRVWXTYcJ7w7
	 H7egD0kZZxWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B8CC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051765439.19185.7071897512317657769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5816e788ed2287dadfd569029af84761fc0821ccb485b3d38ef1e1641e8f3c44
Date: Thu, 08 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670517654
