Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB7C613D
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0A0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678193346;
	bh=rnxaW2NP271tAbPLlg8Evu2qBCBTyheNjaZuEaT9gGs=;
	h=To:Subject:From:Date:From;
	b=N5elTXQC/s4651ZvWEO+boYUq/3/7UaySyvscLLj2qdfs2MBXGb/Xtx8M1SmMsLFx
	 Jae9hLD8IgjCgVO+Lm2Prl3CeqlTWvmcikST+9z0aFIOqar8+bk7nYcP0KlACaOzaO
	 HqVRCj8IDyV/kB06PSJTbhwYemYMF1F7pai2fHKJOSQnQ/9iZdQN4csuWiB/3okWNA
	 ACx7eeBLmJMHCF58uMTdYsCIOFXMZOPHRPuTO5NjGG50UgPBmgHttzUYuf0cs2pLmt
	 PCjmJoOplAJpngMyYtE2gc6kqv1xZabV2U2r07ysSOQDqqZnPjIRVS1Fije4T0sWKE
	 zI4kqezsRxjtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBC8C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167819334584.20864.555035416333146097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7fab980188406f18578956e1d087c96556fa143b5cba2f9764aa21ce2c3a10
Date: Tue, 07 Mar 2023 12:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678193345
