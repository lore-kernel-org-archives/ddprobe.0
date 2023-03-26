Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD013C27
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D4AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679847725;
	bh=kR79NHuKvomgouQBthzEDht/XXHMrg9g1l0LqRl7XFI=;
	h=To:Subject:From:Date:From;
	b=qkpie8uo8JGPNAEDFwIzaquhvyhioJkqtEQEGBKqFvnmiAkcbIOBeXm29Hy8rDFT2
	 Nxdj3/hGRgLU0IBL0k/tNDiH2bkDb4K2T1vJtx2VrdaO7Zis9BTQqnaBgZUM/tu4/s
	 +KP2pdTO4DnVoK+xhtwMkSzfeKSqdEctlgy1h1afSOd1rstY6jTsvz79dXm3Fbvais
	 exrEx+KITPAcftFGIh0ew8i8rrTy9DGK1J3eoTIPbTdfadjBJZgw1aTBVITYi+s8eM
	 rgxbBxs8oSdAFksk3UH3m3M+KVp6cFbnd78pK6KJ2qUqFgnUtRruuB+0JUYQ0cWl5d
	 TYDRJlihZQlXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C013FC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167984772577.15435.9698482637585229316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e4346c74b7e51b50579666c9368a1e01231d34ed64ae613a41091523a8c2ac
Date: Sun, 26 Mar 2023 16:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679847725
