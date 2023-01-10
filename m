Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD45418E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B5AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673310087;
	bh=2KLwMZxigYnFpnYR5LqxR1tj2igpNvwXOYTN5Nzd5VE=;
	h=To:Subject:From:Date:From;
	b=pARtJkDSG3RgSUxDblTeCOsjODf9fHkMvn9g0LyRleVGDuhR7YJdbac5EV0vcIEm0
	 Lo5J3yjKKtAw7CO4bwN+gHr50fqJYzQxNzUwQSDElV22SU0jnuOIt1XY91KGOC9jrM
	 gWDsZ0j07GCRXz9BfdLABlGBU5Kwps+2E2ls0cp69c1e8mPV0ja4APsjRkeGdvTDWf
	 9+/YaYgXdNK/ckYFsWreE4fwZ80nn4me2Y+CAg8FzJ11MomyRfoX7rr+y7DCdbM5ka
	 a7UQsSchHqyi/aEUOgh9JD8X9LMn99ZxUc0/1GtzkZGCwtsyodS6Y6J9+AVV76fJlE
	 /hZmyqfKLVLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6070FC54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331008738.5888.14205970272267755463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05e672e53c6447421c2bc1cae215bc807de865afa1e26ff998b00d438381ea8
Date: Tue, 10 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673310087
