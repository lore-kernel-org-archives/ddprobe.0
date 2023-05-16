Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A17119E73
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BC5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684216925;
	bh=IOvC5SnDVYP2aRc0/u/SGD8a+F/r3sSkakCTcqc13/s=;
	h=To:Subject:From:Date:From;
	b=laZaH3vs0u4I/WfP32iRtVQvKl529NupDWWB+TbFHE5EAUWJC76l2gJ1Lr+fUOxkd
	 bNRGerAnrgMUBhwQpoNbjrOZzUL++i48hU/JWn+s2r9JkKsD7QAZdwb5eawAxW6l0w
	 yc8aCLY5WBGooGksPC20Rxboc59FANw0PtnjCyzLig8d+eGUf8K9iFOtBWYDEQ+1Ha
	 1rx/7AFxQl91R41LBDM1NSS3NwiBkDwu+vvzpWuYxZwm2zE4XFixH7HKHSfN0ER376
	 nT0mZKXDE8VBvc0EeJG2aQYB1ddnAq3AX0Qm8+5AG1gmvBKnLdMpmKRBCQmz1OKChx
	 aIijbc6CSwxPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B826FC77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 06:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168421692574.32740.2351064688987166787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327cbf639e904ff9ef6eae494052b286e9a0ba325903ac926e0888084d02cc1f
Date: Tue, 16 May 2023 06:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684216925
