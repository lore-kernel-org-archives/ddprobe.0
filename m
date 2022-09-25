Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6E22CA7
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6868AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664146253;
	bh=yFwCenJdxLhAbYu0N/Udb5qFHFgvY26BNgGqbvDawo0=;
	h=To:Subject:From:Date:From;
	b=TQXztMEU06MkPlM7veDjqqDNt8E2RzuAAEbGStfo3ozlkcLY1LArSR3tdiHIpw6l9
	 XfVS7V51JmbzN3SGKhIbTblZoIV9xxQ8r3rQK0BwLWlCP4//DSlEZsy51bLyXKzpiU
	 rWaFlxaeVhCgg9Ha9wegeKbiBkjDPcjP//a5nMBIbL1A0e0iBgauUAXPkc/h4ai89m
	 5k0VCRwkm0REGMaWgrh3B1MRkvEdH4/s2T4FC2e6ayD+1sRHwCyYHzJbr+T4CmxsNd
	 ypgYmcsaEXZ3Hi7YEcYFDw43S1NiOhSRWt/NNxT1LQFB8STmYUKfgeggSfgwDL79xl
	 6wkBBPuYZpzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50998C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414625331.8898.3327538174229029063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb8b56bce2708dbd57500b70e6e10e9dbc4d9930520551b74d320e14f3a3c22
Date: Sun, 25 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664146253
