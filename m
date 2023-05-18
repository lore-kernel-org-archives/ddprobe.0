Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40010137A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE19BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684385165;
	bh=l7Ecn2YsdxFjq7n/s0zIcyEGBQ0juppsJ3ZPqjTCEJI=;
	h=To:Subject:From:Date:From;
	b=q1O7qWWBTA8sWQRxxQom70n4sOfWqCQJhpbSjsjqJ7cCdDCDiPBqzgJ1lAw+hFSeP
	 lrwOvfmqdXtxMRWmm3KhSt6MWig4JChnhb2rL1u8i5gmj+zIMuHWcko1RnkTDudGij
	 HJOkQ+wnH7hKRKwxHIc7UP/sXTC4NfWDFrGjJXs6VdT0KloE1cu198wzrLLkcMEGot
	 ACmG/MVr6OAst/F1/z4LlrA5ERyIoPrwH6NIipRFlBmMyWqPoJgtSPzLxW+69SITzU
	 nm7NrNW2KjtPNsu4BxmmAjkqgxH4HpD+ljxQLJWkwx/49R3ZrpWF7V+tjYoOjUiuO7
	 BKoUfzflcKb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BE0C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438516575.13330.4495252186996002669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efcbcfc591c662929ceb699e4d2e07f19990d04d9954712d44ce8b701736909
Date: Thu, 18 May 2023 04:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684385165
