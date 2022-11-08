Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFF82CA2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2C7C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667880054;
	bh=P/UmsNPM1GCJUiJwPM3ranuSs7o93aDdmYXPtWLtp9Q=;
	h=To:Subject:From:Date:From;
	b=CZatvjDd6cb70kixf0MDoAylxDqvYXWn5eUK5d2ROD5XAcA6OXYpXZU4gd16e8xFr
	 6MIwqHsyhK32QguqoyspxvVNbMc841yHPzafRrX5CDrp28lpN/xS7fwSzzGEztRbQf
	 qmyl/2Zi8UBw1zo+emO3WZs5pputIgyDe0ApQn4AtDkb9vSSMqFkM60ETm72P5stEk
	 knW1t9j0GXOQ/HG7rjw0HuSzYY2sXcsNRgNAcmHMsyzHWbgif7fXoSvHX+33/CDRvV
	 /dFRpaOzT4Wsh0xUPxWNyD1mm06VzmBkmRYN1Hkw96jOb5hRsNr0g9Twd8v1mUhxAr
	 n3XUfZfSN3ftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54770C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788005433.19935.377975945229992264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ab5e33d09f700f2d4d2c5befb483df3179f7910a514bcebb98c51c2f7aab95
Date: Tue, 08 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667880054
