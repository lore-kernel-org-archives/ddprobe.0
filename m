Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F150E17ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C817C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672553487;
	bh=Ckm0mBouWHvZP7aMeUO6OmIRD3ez5z0HzN15CFW9dFU=;
	h=To:Subject:From:Date:From;
	b=FPRhA5x+9Yw14y9WIfTbMBsji8iNE31UiJtQR7RlDwVVM1J6v57t5d8VCpu9bvvEJ
	 1cvvxfM0fp+j2RmHGVqPoTxUNqZa5J96gUiEHBctE0dwgfjYxKuKQ5ah1Oxx/9QpGh
	 Bxg/B+4D1EC08CsdGjcRFgIOa+VZ/n2am50xssZHjrHgjy+CdOdWVl5wMW898bT5I4
	 JPUvpQULNBy0t0XMHyUs2PoIxSZwrf6rLaaGAWsUIk4Ku64OM2LfgtCNf8doxGcGRn
	 m+1QjHs04tXwv6q0/rP5fyiKnZzD0l0nSnCT1hl3CF2pXKsxfQ3qoVzprsW+KrQIrH
	 GHFeWoOluiJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEC7C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255348743.9390.17909916112616836349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153003cfafa8b4958f46b31626b632bd0802401d8dfba6f4c3d1cc887d3c3a91
Date: Sun, 01 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672553487
