Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029F4182
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97680C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671849087;
	bh=WvmKHBA/SY/wZ2OWudpKmjKRs5EZS6EmUwwfbqzqufo=;
	h=To:Subject:From:Date:From;
	b=tJCbWvPaepV/2hZkFpViCF/iDd1ovBe2gMT+tD1gbU9gjPsdLxc6/AYHtsDQbEz8o
	 hMerusDmMR/hezC5Nzn+wgIX2eWq9OG2ZS9DzlEJhhjRE8iaYKe386Zl+rVP5Mv7JX
	 GXMvoS9MgjQ7RxVDtZx8QNqyUe4ut6bFVfxTR9AtX81KSPFBCeN+A2PMNkuEGPo2WJ
	 uSIdrCAt6lcz1FexMkjmaXTCORUlTAqHbTLEOnvy+Fz1oiKHB20ebjTrq3chkeZEgN
	 FijJ5C/jTTxT+DHH2SvcS1g4ul2cwJiErapIh2t3uAhkAF8DwWCzgeqch5O2pdfaq7
	 mPU+KpnOzG/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73FF2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184908742.20783.1947545097433512186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5add06ad08be5745419499c2a50a53712d827c555c0cc65a0a7715e92cffbf
Date: Sat, 24 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671849087
