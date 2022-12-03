Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB05F79EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F02C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670097054;
	bh=U/Gten+zdlp+2t/DqoDyfg7OWN5lbpSYOg1bsrapQAo=;
	h=To:Subject:From:Date:From;
	b=mvhKLbZNejaOV6mHdPh/lUUqJcr1GfUZLW2XjWy2KZwerE68cIDWhgS//xIlfws74
	 Ykv2ROnsRbazFrMbnzyIwrVpCCHac3fm82jF4LOzxCEoPm0gvch9/pTwFXHoHaL6x8
	 c5p17MHb5qAl9M5+62pJ8OXFuXfeAbrm1xyEXV3vN3gIzYX39quneqh8j/dZEoD8yS
	 aBVjWwNAifQ7ew1+HSEeOA7PgabjwBN4L37Yds7hl5qm9WBs+zJg0CucOPeP3kXhpD
	 DS0wcBliSiuYk5HVqRJo23mvRjNlBBJuZkWE/ISCI+vcAzZnfR5RiChLxfQgN6oiNf
	 c5TryHaI3fd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5842BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009705433.14591.15516770578531093490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f2e2a6e00898b1be2019fdbdaf46ff72e7c64b9aa44d0fcbf881ed056fb837
Date: Sat, 03 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670097054
