Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E0A7C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA904C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679367486;
	bh=ln2GOW/k5GoLU7nR3AtOnAyHVzb+lTF215XIMzt5qVE=;
	h=To:Subject:From:Date:From;
	b=b50GW8u+kAv4CtojIk6QnTf5ikwuvKsICnRtB5lMFhArk9Q0Nc1hPOcuWHoYFgvdT
	 P+pd1FAoSh4PMvtsSK07LnOq1VgAIvR6gEA5h9w2bQJ60cSdznpcg/V4uceBUObQ60
	 kYSWua7uKIwl6cV5xgBCh/tcFAougSvpT4AhLxKMugjRJIpJjplXe56NEKT6WA12au
	 muzJM4uXAd5VB09qhy+Bs2M+un4vFF0CA6aEBcppk1d/xJCvj+3E8KZrguyHJu8u5a
	 CwIwK4NhSvSBoroBp/OTpOWowD60tq8CNHQfZbSHsP2toc+RsaOfz4DGk+TysxcNcK
	 LUAU7ymVMNGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED90C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 02:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936748583.24415.9597807440855554554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affb2a01a3cb9b790cdfa3b849de308cdcf1a099adb6afa90e1ad50f1a65dfde
Date: Tue, 21 Mar 2023 02:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679367485
