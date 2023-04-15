Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405EA137C
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69C3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681555385;
	bh=Bi/bG/O8YDR805oOrVYC1+HWSZREXSfMFPfWkffjdwg=;
	h=To:Subject:From:Date:From;
	b=e1cW6estCtNW4v0+T3VkNJaS7/PoJNZQggQEH7grKgYOUeM4ZwFxX5cjSLdcnGqgC
	 FpmwEswn5t+WRLXdxXdi0jLjF2zfDih4+A6NHaaZ44Yj7a4Jd6VMHYUoo+3q/iFrY6
	 Qs5ABkMnwnmkf7RiJ8Zp2x0r3jJJwjFcR3LGcMZ3Q79qF/foz2y3Ty6vwtMxFNdLnI
	 izDZRHbO99a/ya9OpVKwHyQdy3+dFacMmb0uGke059ee3bTdsWjQ+CqeLOtYn/z+ek
	 ZptxZWW0dMIP5ofAH3vmfS8/cJBntAY/O88kixnOZKgldfkp1EWQtL+rXKRXOj9mNZ
	 jDW4+GjXb4y3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12F1C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168155538578.22291.13090312715563810354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2762d740f644b50d8bfd18a4e600bad2414448f3651c464625ffae6eb3a545
Date: Sat, 15 Apr 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681555385
