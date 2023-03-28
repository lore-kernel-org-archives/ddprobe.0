Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5616D7E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E98C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679964185;
	bh=Zy3i1tUIYkMGruAPS06jEL9gr4moKpMLQJ2ZqKmMBBM=;
	h=To:Subject:From:Date:From;
	b=Qfe81IjDMEg5iIi3pOIg/ut0dhRF3UV0wW9AGGEribM/eAlqNb4WthDjWfeJkBOOh
	 e7+1Ag9wuuBSAIsRUuANWl9Dx9l/6Herig6vbg8Wt+pfkYycvwuO8oz3pD6tJnEzya
	 nxgjQCFdCk6Tea69EXEOJtN6HsN1d5fCOW3f6c5dPeWceyN42KYjNG4G048VzjzPgw
	 VeKy62s8yLh0gGsMQciV3GzVFOJbLU7Y+n2JgBixDLv1P66eDQlg/HYKpuQ2CDZXsz
	 GJjt16hEJWAEjecQY0169TbTocMu7/9mRNOaZHkEzqPYaPJd91D7xxwEZ1RD4XUm7g
	 KsplhJKooJB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22D1C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996418577.16861.8639246795407781572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c357f6e65d144bb4a261917225d7599d3dbbb9dd3226b5f2b5e773ec4fecaeb5
Date: Tue, 28 Mar 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679964185
