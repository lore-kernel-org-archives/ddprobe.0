Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383DF2260D
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 21:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2BFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 21:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684962905;
	bh=Tb5v1e2qviLUabpamNT1w03ioi2dIdmB4CRX3hGsNtw=;
	h=To:Subject:From:Date:From;
	b=MhVyb5B/TDmbl+t1wABStboIVVfzr4+hpwfDmjOafnY265ga42sA025O4ZFs0/gBB
	 aYpZfOXM7osfhNH2Nw8RUxkX/Cv5IL0gdR+w1rUw3C0cRJgMrpDzUeGm+hWVGgw8Ch
	 d9fYi2TMpBNwfNHNP8cEIO3BdtjrAYmUX6Ncx2tNoSmX80as+5zeVdG0Jd3whYe27i
	 6bOkGebUYv6dvi2QOZkJBG3AsySCkWomL65IcI6gSZdVfRD7l4pprO7fGybp+MIOZT
	 KFozqWDj/c14B69OdTeQoDGPCx5McQUCKivK3fp83rsGWwJy25muLIdZzkgH4L7T1m
	 hwct+7BdDjxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD621C7EE2D
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 21:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168496290576.2129.3117909340092748047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec10bb5f536a12aebada94784e062c3751ba6f1dc579044bce00668d7ec3083
Date: Wed, 24 May 2023 21:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684962905
