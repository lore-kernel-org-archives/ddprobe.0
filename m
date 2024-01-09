Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136F43D978
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1vJhW10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90F5FC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704833296;
	bh=qNvBzX7SkdYvu9L7ZxQidXvHOSEAZhqm3xab5sWPj4g=;
	h=To:Subject:From:Date:From;
	b=l1vJhW104vCMyUA9X27pxZCZZ6L8LFfvWmsfuK1jmKv+Cpp53ZR1SOxm0WUOunbt2
	 V5S/J4F2fKPmLKg49t//we1ogOG9LuKKOT7fjh66WJI0Olvy6bRsLh6zxCj4PCUetZ
	 lCPeAgGqkCwkCJgPCR2cgPmXNSLO+8wpp93ITd1Z+o2H0gWzB/tX+UzL4jF9rQBcMg
	 KUIt/M1VGrfKGExtZWy1ZkXOuDnI5sWWUkgVpeQgg3xy5pSBRtpW4qLL5bzf0WWlYD
	 yWw7Fh6ctxIPCNMjgIfkSEy6IY2TMeyarMIFgt7+FZVU6/Az2Y35tNyyCt2fAestwr
	 VlB5vQ5aEuMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70015C4706C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170483329644.8698.6163174045938711788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ba957f2eba7b6007aa2815832bf6d2fdbc6c8c42db0ff6a2d0ecda32e19210
Date: Tue, 09 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704833296
