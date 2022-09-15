Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1B74683
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B895C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663249253;
	bh=8p0wCOPOjk/RkGcYGhvTwq8TffbgWbl5VF1JJgJjVZ0=;
	h=To:Subject:From:Date:From;
	b=T1kaosoIjMot7cWRkJsAR3AgdUphaDbgW4I9Hc/dZbYctzEPfG12TZXq2eDI8nA8k
	 bIBIY0CoNKMDNrLNneqtE0hcGVUDjeYSBYsoC0fGj0LQZBFS5RD/rT+rka7MNTO4Zu
	 B7hCDVyIJnnxW9abe7wrBettkfdvToyc7POTvJ3QUd7p6KiM2fjcAvJ0isEG3oECDZ
	 45GGLw4g8yN82USDYwiuefyxi1lmBheYW/a6h2y58hQVUN9kC5R8biWpV2BJFhfR6O
	 NHMf0arV9r5s7EU71cNOCpDg0ASWpPEn/ZPZh5emJEVqZYrU0TnY/0DZAL1VzB/8m8
	 Bb6vtHJcUvOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559E7ECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324925334.5826.13425475208787296503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e450ab6b765a1e7b022530d725227fd75e599d261a47c7a9246afda3727f7847
Date: Thu, 15 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663249253
