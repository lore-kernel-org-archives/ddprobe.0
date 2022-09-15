Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25DD3205
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69179C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663234253;
	bh=MSbryeCWkIrfD3rWgiH8QESY6yYCSSXau7vTJ9fWQ9c=;
	h=To:Subject:From:Date:From;
	b=b7AHb+60jl5XXT0qZlsPeegjkWOmPweiwNSUaK0xwmXGZXlJNXgEubzBgMZL4pzZP
	 04SV0Wx7rTZ/zxAPrKeP/k5W8btnKiHobFQHnGabY6f7RwzwvHaKrtWTOamohn5k1T
	 bdm+rHOkXoneebe4UfusifCFPgFFAMRrHlQRLyWHmXqT2AumeXJTx0Eo7aX9DdRO4X
	 VPO7z+4LnEA1hgxnm3Ly/X4gGZv1DtZ+qhoIduU/zi++VfRigstx/I7RnvtRl/cUmN
	 mF3mFa90uKnfH2QicSGR7Hksz5rWZNCa8LL+8UnEu5sIM4BTXRVbNk2hOICZael3wx
	 qTMYVXUyF6N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5289EECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323425333.25337.16096938787625478672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba9aa2ff5ba6a62708dcf497d5f602c6cffdfe0951f4a65d14b56c2250ee7f4
Date: Thu, 15 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663234253
