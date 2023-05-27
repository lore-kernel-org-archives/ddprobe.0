Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4C19902
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 23:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE224C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 23:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685230746;
	bh=saL21srHl4Ro89fU8eVGprKVv2dLI3TvDYJkunEGy/0=;
	h=To:Subject:From:Date:From;
	b=Kfueehcaw9FgXiXSjSsHcWNJLLQzqjXQ/hRiaSQYje+h9RkTtC0SSqE37GXNgM4PU
	 X6ukM3AB5oK0DubMUFg5a1gliLEimORFHG5Hw63u9MnnKLJkqq5SrfiIFdwxDkjAiJ
	 oKYr5Bjc9cBE405OpXQhhyfW2wCCWluabzu7TKvztujx3yf2dLiC6pVqnUrbUwRudF
	 SJAMyzEPN6r8fDzbPOBDaO6voEKL69qPfDOBXx0jTZBRUCIsgwF86iN85dlePM+hB+
	 a3auWSss9p7N7Y7WgLOMmglvJgMIkNPdMQ6IvW2Jv7YldHnenR5mGUyBLJTLTcVUH9
	 FDQvjdiiMak7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB440C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 23:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168523074582.5085.3618397054551784586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f1b7cd491343ea296f2ffb7529d9509bd64a9f79be25f0ee00d7cbc9acde57
Date: Sat, 27 May 2023 23:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685230745
