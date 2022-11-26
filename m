Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0E317CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FD6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669438254;
	bh=oz0CbPUEn3QnaPyKLDM8gPldgff26dezTTgJeH5jq5I=;
	h=To:Subject:From:Date:From;
	b=k/bQ/dWr5ALzbRouXKU19PSiODFJeDZA4h8c/JC2FmYNpv14aGtvaae03DneYe1S7
	 zdihowiRAgOaYrEUhCsyUVCHJAIptXyao4n6QJrxso7XTh3z0kgx/4MWTeP5yvlzvz
	 3V2pFKTTHyfY+C/GjjEXByizqLigdN017GMagXDRNrGZBrnV02CmeZ1i7mIvDKRkL3
	 OTL5twZZqh/7UYcffaz2HM9VdHJ5s1JUXL0lPKBKs1WDexYL92qNuKQy+M4YUoVS4o
	 ev3NkDemMXB0b1g7lfnS41OP+zWMYLXD+4fo0kLgaZ27N/6l554hoDrk0vtF6XcqIZ
	 gsi9+EA9i7VXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5698CC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943825434.28875.1420414077854901536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655323568b49828c01f3254186f975916257d55954d3ca35760732fb1877d018
Date: Sat, 26 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669438254
