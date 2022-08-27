Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BD046B2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71015C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661636452;
	bh=TWyEP15dLQ8Eub2FV9A0Ry3GiYnaZUplancBb3jxPHo=;
	h=To:Subject:From:Date:From;
	b=VHFsy8GOPW3diMCbdEBTHkkcDQ1cQ0BoQJ33OgOyQIMjYNzwStMKz1GSbpUzFjaB2
	 lUeGk+2PBtSXWhhnJSIl16GhNFxtercbTR8Wd6hBcWR/0Fdj7eppD2j5Wv1Id0UbJ3
	 KEF4lWZBfcGgqnMiO95iQraAhi6l3Holw+rVTYvY4anvLo3AbS88Dm9LL7rIY+kNWW
	 Qe7uAADC7W3U1x1jEkiTvIDls8f7t51Nltx8+6Ks8FZKV/VGSPtFdoZhD1MoqJE4O9
	 u2ZOWhouFJjVGuxGxEAJ/MYsdVvwaXG6JgUqLCoLFunkXhgAvTGQ1hV4nuyEQc2wdy
	 1raodJ1/hrM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554A3ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163645232.24005.7295230981004351214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32387a1540586a6518bfd1858f7da6f48c826aca0b9b180efcba3a54f9a1d826
Date: Sat, 27 Aug 2022 21:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661636452
