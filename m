Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F847C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A89AC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670248254;
	bh=PtSuFCoZGf0kxJvCgAph/TrjJgCJWHtKQcrWWkFNvGI=;
	h=To:Subject:From:Date:From;
	b=ZHqEAVcPDHELW+XyGL3OlsQKVUPWAXwsFSmsf5p4CnGhGA7gHfiq+h3mD9wLeqCpI
	 C4y+nUodSMt3edJwQv21ElVKmus6KeWeHL/0zOS0MgGsB4YWQmQ5eDbb+yVXKXep0y
	 1UOQVOWYHJ9cgYMzfptGxASz4VU3XxmU/YMchjET6JlRoLxNzqY2OTl8PKObRR1Wt1
	 ZOsYxHQDuZJ6zyOs3ge49XPeZobpW5w9WpS3zK+6RK1bs60Wxi8eR43AnNtRMyRTKt
	 lStQd/sOFx+sB7IM3eBTEsWM3GPZHI+cD3QoyxoyL/Kopfjyd2+1CWB8mctYGK3m9n
	 5Jhz1fpQ5U/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523E5C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024825432.16979.18357373540223127548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580fd85eec18cd3878a20bda77fff4a5d565927faeb39c8763972f9eedddcb52
Date: Mon, 05 Dec 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670248254
