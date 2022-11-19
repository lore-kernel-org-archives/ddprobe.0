Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2A562F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7779CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668847254;
	bh=J66IabiWXtb4mb9CYwpyNo8O1GrsyOFISMmkPZpFmP0=;
	h=To:Subject:From:Date:From;
	b=BGo9wVp/OTPYUeq1aB9s6+Izw/baBEzSEeZTdptwQfDc/Q07OLo2GQaSB6ZwLrg5R
	 W/fTiYBND00XFo7SsJzrPH78tNt3Mk9QpAaR4KJp8otaTPmGDMxwD0JlD5Y0Jv/5vI
	 Sv+EFGUOFDxNsSf0IxBas0UDxZQfn6oWKpumH/31jywg/jN/kLpZn8buxGCd7BozQt
	 oAvi9kes/e2lagr0HaaAAPHoFRm1VFtklFldMYG5YeFNesqn2pJiN5/t7nsQpICkZM
	 eXozLRrRHyI4wqBlgXNa3wyGhDf8pkxKCwAPAYEgH2ysggDMYi8xXcxT0MlnDlJYGN
	 VcMpUWdaElXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D83C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884725434.6488.7435454419873662808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fddb0a28c5cc988e8f93ee6c6abd3133b059c5cce71a6c326cf53468fb6ef4
Date: Sat, 19 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668847254
