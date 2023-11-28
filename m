Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F365E173
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5m1Cm2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82620C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701130696;
	bh=oROczGcs4BQB/seJ2HdcEhbiq+tm3GqpOVp61fRkl/I=;
	h=To:Subject:From:Date:From;
	b=k5m1Cm2TUBtRVmmVcLG278U+3mJfcFJbdwvRrW0idvWJ+YEqVeKYZSc4E2un/yWMU
	 7agQSujHRqO7NZgOBPGJp1gAQRS/MvMRfsJqINTJjimi+h77okgTw0KO/NfxCTp6IO
	 4NCOhIIAaCRSO1FrRN5fxBk5m0kMkn/uLlTDLzrq2ttNmAKXr0qFMuX9juHsstpIni
	 di1OQYiwzGFiOJB0oQpRmbikGkG/nJnd4VXdSz744aL+kTdO/neN7Cho471dkqpZqQ
	 XnM778iOHKxOWJrKvv3LsJdIWPp6bRxF0Se+MTxxjtbikOgpvpEPIx+vRCSykG24WX
	 o1FQZzGLrW5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F834C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170113069637.899.16865186861640565898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3719db4b3f768876fdaeb64d5e44ebe32d86770d8ee2ca7eabeb7961bcd244
Date: Tue, 28 Nov 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701130696
