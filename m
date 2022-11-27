Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD4C2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73889C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669591254;
	bh=Y2XV2nJgMFcRLdWmksvC/qmaBM5gDHjy0GJtwuZfgXE=;
	h=To:Subject:From:Date:From;
	b=MHbi9Fejbr0rzasU817wie7WHzuj8HX88yiSdDfLSEk/aIlI4NsGcrOqBnf+2C3Sy
	 ph/8VCCynPGB5xm5wNxNgmT0OScrD50wdyJLGaFosMIusM4GwqNH5ddFMBwKgy92yU
	 wbG5FWZ8XJ2hxUafldHgAc+zGLxrgMCbxKXx/4o/DdIBbfDwdx7qRH4MKPOJcc4sM8
	 y5tLHM97fbFXpcG4m2QsSSgiDPDHQzx8ng01n3NGpbMmvzUHIr1dluHGlUDOZ3OaAy
	 faaMX3cPSdmG6ufY6//2gsodyqdK1N85wMdaTdd8vd1DZhtYFrr2b3cUluUhs/Hu4I
	 aD3Nloz7UJQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54266C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959125433.14756.12641188634990632994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32df416a43d83290b8820cb937cab5ebb44d2e03da21e9587c92ce684ca15bcb
Date: Sun, 27 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669591254
