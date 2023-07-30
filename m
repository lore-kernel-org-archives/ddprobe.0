Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5252C14F79
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3765C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690748528;
	bh=MNJplCntVV9qXvFoAAZNpPUGi3+68j/XKlVjzlggf5A=;
	h=To:Subject:From:Date:From;
	b=Mr0l8CTcedxjFmwlUr8a8SkQIepW5LxfDCvvW2EqsMWuqwLVcYw5U7rtmciculD3l
	 Qod/P180Q4iKrAUxRjfsQrED/TSg79Ok5ipRQm843rVWPmkVYY4VlshZDLH9k+8Bls
	 /I8Mwn1pIM8lc5ME0550t1P53qzKw0qr7+VPjqTYSjblsrnlV5KrjaORJ3t0aMp9NB
	 wRObkNnFj5a+8Nwd+EG0rM984qiUerkO3MSscYeiclk70CMH5HRpml/sWSfAKfwApG
	 GWdk8zUiEQ3jncvNEAwU7T/a4y7C5bg2ArkJQkdxuSCTvXWwhp9AlAGIecvsyUpcTL
	 D2EnY1ktpBguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A963BC001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 20:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074852868.32765.11376807083465035018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5aca03af17c50a15ccdc73847950e0b348926c127b4ce11ccf24c14a857c36
Date: Sun, 30 Jul 2023 20:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690748528
