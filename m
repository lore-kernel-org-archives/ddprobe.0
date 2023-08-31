Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B81879F8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA70EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693475648;
	bh=Tn46+Ww2gwJudKXDFDbe9GwmORFXoFUUwLAlhTRfMhg=;
	h=To:Subject:From:Date:From;
	b=EFpvoJFIR8Pqxbc+StBYjiMx+JJA0LIW0jCaF4YPkI3VFnTxA9BjGtD39axnkf3xA
	 Sba1pzrcdwfqGxmSas1I1/m0A6vHGVrmWzHAIZPdcof2IlNCS79yo+6taESE+yY3ao
	 dDRFLMupJjyzG1+hhPXO2jpvYfvpDyQGk0W/IsqJHIkl0fW84tXY/THOluwWtRPUW5
	 4MGKshVYjYsSyYPA2Dc8Agt8Wdtz7vUWOSVfkYO0hAhst6cABSAB+p/ktJwIl7LRFf
	 icSQiFbGyDqOvd6jQb4+E42Gxekn2x0hiLpxB3/Jj6/oPLgBQgXSZJenO6Oxqtoy8g
	 wNzqMIo7DfTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5197C83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169347564866.11605.18333949692603661871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d745f8d896ac8b5a0ebbda2e2ea2c576034e78759148d652e690a1914ccb63
Date: Thu, 31 Aug 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693475648
