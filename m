Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A4C848F
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71784C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666805453;
	bh=SWJ4/6wtkufsKogOslCfXZwI3UM7QcP9rWTvP/4yPT4=;
	h=To:Subject:From:Date:From;
	b=HSLF1QMJ19hbLA4N0MByHA/r2P4jfEIaC38GoD/9kkuDetN9Wp7gYk2UDCzHuEcwo
	 vnwVELY4h+aBJeyjJLly2r2wvHzY5yRgWmLypaN6QB39itcB/0yW+baaxaV3OCee3a
	 2hg+zp/sRKw2/p47BQEWQYEZ0ReJgEPtg+0GCuTXcnkZzWipHkFCmevf+h70wBuVWT
	 5LUfMC4aWgdRYPChuI0IaoCLbiwx6qJX6EhH1B4mbt/aWOy94sPuygTDb2udovJlrK
	 qPzqAbrW8pfC6e+ujob2LlM6JqMfwK8UTnjDtUDqjCGSxdrmoQdGFotPBi5ib+O/QY
	 3kVuxKtfVfe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AA2FA373E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680545335.26706.1396368716190288966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044a3298e798291137e8c1037b9c134eaa4d9261deabbfe7ede85a604be693f2
Date: Wed, 26 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666805453
