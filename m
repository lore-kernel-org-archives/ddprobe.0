Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3588466
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB093C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685707025;
	bh=kWnkq/Yvr9UPQyCvyVJBMATangBu8YiPIdQ/8C/RQTg=;
	h=To:Subject:From:Date:From;
	b=NzP0FOaAy6q/rjGqUeSYSsfviBV/GpFaUqu7pmCewA+c0rbdfTdjJ1Pm80ErxwPqZ
	 lN/tJdLr3BCSGsljBthcrj93CgpMx1UAb7QmA3+NchAkZyxd+FiV9rZW1K5mWFTdvU
	 D4a6pQrO19VR/2VDnD0HgCoS/xGyeuj5m/xqGs4T0DcZt47+qCTGN/PiKDmYirW0wq
	 0fr8XfgDGvVO64eKPgvnsujtHLFtZD6+bfBkthhV5Pbjmcad9NppOvyyf63SrOiM1+
	 j32+I6CBBXHgglpnuLqpGie3BeIeM10dbsyVwK9tfcrgFrWcNabeBLOpSLTdOPqd9y
	 Ey2B+97eEr5Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E51C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168570702573.15993.15905042164736314031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89e07e8af35f57500bfc595fc58deec5a52e017399b4d0b5640d7c12b98897b
Date: Fri, 02 Jun 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685707025
