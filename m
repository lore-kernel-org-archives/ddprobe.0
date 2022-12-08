Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED4733D3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71668C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670512854;
	bh=SZclX0L1MebMPmCFaKQ3eHDK+LQV1dZ41yr0w4rPXTs=;
	h=To:Subject:From:Date:From;
	b=sxMPd1oZsZ+NC1C+l2zHofQGxSw2a0YEwKE89e6b3tjL35c/XFcS8BmUWj/WZHkUK
	 JjgsplWvS+KIxYSNy8jIzRaEj3RlPdG3GcWLqPeRo7GwnGYox6afTIU8R0c2KGAiFN
	 1OUpVrgzvCdeLFyeRJloQRSbGGARUPypHe6fSXl67O7EuTluL0+T2PkUI07ONS3bcn
	 jPG1ga1faQ6s93R2F1pSyCD08NUUlulBMRPBWYsWIaIYbm4iJDK4TyLW0CJwDueIUR
	 pYd7ps3Hf21wr1oVQJOXP23tYeKDW0HuzTS7YVg2/7/hO6KVhtrQe7s5+8ybc3UOqy
	 6rtNYg/Ala1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E28C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051285433.30892.8978545126663455219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875061a91275577c76f1e266250a0fcbc0f4cea4daa5d6d8b13665cb41ea9503
Date: Thu, 08 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670512854
