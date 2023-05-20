Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729CC8F5B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 114D6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684626546;
	bh=H9TxYJrk52Al2dbJop4sEXLYtx25v1z7h65tecKYw5o=;
	h=To:Subject:From:Date:From;
	b=k0lqkhgn/NAlf9e5W8aiHcu42ZcIpW+i0JHTdcI1NQXJ95mK4srAZhdtD+ROkLR2g
	 DceJmazBBYHl6q7Xg6/UAQHUaS1rLo6VTxh70cGxkUq9j9vb7S7w6jfzzXeGx2MKND
	 JTpnepu2degDsg7iuXtlInnsHQ8j3AXZ+DM0b8vACz/qiesoQrUstXaW3twkJhT3sD
	 3LruR0zsb2rVZ1S6Tym1Pv/Bl0L4nCrLMlvKrRvK5l0vcfI7ivuV9Sbp0NhCZy+UP4
	 /BSXCriC6toCUn3N//wU8JDDaDxz+usVRIKWRTolEOcW1I26ugBUZ8MZGSqKKpRhNA
	 ckbgy/9FL5d/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2943C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168462654584.5347.222993984058327207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120d54fbf08f982f0dcd0fd38d2ddae092bc18eac5410e5e35a2bb9f0e811102
Date: Sat, 20 May 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684626545
