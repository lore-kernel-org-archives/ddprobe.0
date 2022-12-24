Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E6B2CA8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2035C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671887487;
	bh=LyIGEXjyxXGC6/03V6qHGhpl6JcEinSpcCIRD8ms9iI=;
	h=To:Subject:From:Date:From;
	b=ejIB+Uq4Il6WVPvexLengkERWs4ZHHVibypnQ/JL2BKFl08Gvmcfyr1UAP+qCAePu
	 +qOoOfIeRWri9PSRQdaul2MyKCRy6gOKuVA4QJtjDT7gfDsM8L0Gnf6zSH7oK3ijXP
	 9z8plwRNaGeFVG+f04PAgDrXLFURXQ86hltqexgFKJfb/SfP31g8boxGEtc6TAyyk8
	 hyzVvDseXzcJGndi8FWkf2gJv7BDZsZASEG8rH5MaPmKFMzjlt2I3R16RYvwQZfiET
	 P2E9wSrA1LtkJ6W87s0FjT+JLfCBfBLJmnRl4yaKdvG/a0GoPyqwFCnuyHZqxSaCdw
	 2vqcJgEao8YiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188748760.1900.11272551621804000754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a935a0d169bbff0eb6c645007dfd56731aa65efb5c13a93d3852d93f5f083f
Date: Sat, 24 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671887487
