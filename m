Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6847C19B
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBDEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695523508;
	bh=NB0wcxJTXjAW+5/jcnoZScd0n4EQ3lvA1aAgvjF9mFo=;
	h=To:Subject:From:Date:From;
	b=YCd1oCYD7vRV15vOhE+KVB+wvPct4XCEnYwGRgtraCA6nYnQgGAdz58okg/9NFNeE
	 LxJHG2BoFl3HbCStIqHF7cvpwTBlGRhZSmfx254NtwES6TA6ONOJrbXvThpcLwTDYx
	 EnjyZ+gtUuUWLqFSLpJgEU4Zzu3VIAa+Mo2+VAew1Jhh0Kr++6PHinRCSW5CXoBRVg
	 IIDui2yd9x18R268i+GPjAW1rCq4SdkLBNRTXLdHHlWiKbIoLCJKYV4qHFtQKQ6+XJ
	 QEuRF/VuiGkyNNW3tzkpluMZkMdAB44AI7UhoC3PtGrT0mQNve7EOkY2zEhH0npLmv
	 wYn6jlYo7sgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC005CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 02:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169552350867.8359.5566034687600531806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1a063502e5e07a32b83affc3d6e7563a95059aedc5b9d51289e6c55873324d
Date: Sun, 24 Sep 2023 02:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695523508
