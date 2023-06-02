Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E1B10E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE836C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685689025;
	bh=CuWD0ZLGKjF682T4pbAjYdqcgTljjfXsJSFn4iilx24=;
	h=To:Subject:From:Date:From;
	b=Su8uxzGE+4OcUg4qfT/gPPizfvjkx/kc2phTREMRQzA+Mg/dicHk7DiDZ18V/M+yp
	 hUAoHaxU8L+H6V+xB/d2jL23JuWuqMb3UIKq7Z6ZBB1t49L+ciTU0+4RJXbi1L6fnF
	 H9GA506bKi5iyyIahqnGiLI+nDapMAX9WIDsi0REG0nPwx3W3pfbaAYbbf2EWF/ocv
	 dStTWg6FdCiCLu9LW0tbhOpekk42V2A3sGo6ZYioU/BZkWMvBvR+UGmoMLiRiV0rIx
	 hNbr8mvZJiQiVQNtSCBZ2g2dMkWBr4PaM90bxn/ua24PAgd6dGDfKnqVQBf2xyhDdO
	 AbAqeJDdvRfxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6016C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568902573.20956.17077623649821267272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba5df6284cf3bad0beccd49b0f59d5cc0e2b2fe7b0787482f980b09e4989664
Date: Fri, 02 Jun 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685689025
