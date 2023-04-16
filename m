Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665AFEA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 04:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 092ECC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 04:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681617906;
	bh=2UswPaCZhgjkGZ3P7OFUHlnaCw4Q/ea3a9N2+1l27Q0=;
	h=To:Subject:From:Date:From;
	b=itxAwT5Cr9WmXxgziZ+weZUCxI/ob26ZEBC0tn+IF4ErK6b8O3rK5LhcMGIF7hM4d
	 UbGlZc0xeJXnzN0b+MNtnfg+uCBifHSFU2xrfagYeMKmzv1h7FLK42+FPF/2lQszfR
	 0HD7VKHSD+yFz2O32VsfFfLmNPaP6pPku194oE9Uu3d7L/l9iec+/EJzlgaqrUkMVk
	 j5LncNfNkhfGFGjp4DHoO0dwR/hQl00ruvC9SdzzR00wUK4Y1N7RLC+DoAyya86BFd
	 BAUsKWQLru6Jh/hbcFbmrnT/FlN+ugLeV3bpNPbHIPPCJoleKc07rNUN8NDEFsEre1
	 UvXmk4w94936A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC22FC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 04:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168161790581.4232.4311334852223120554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e8b5008de61791fdc6164420a57652d8a3cd563c4fc842e0b2a1911f5e2573
Date: Sun, 16 Apr 2023 04:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681617905
