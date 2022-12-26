Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9E120F3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D89EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672069287;
	bh=w1Um2xGzetFH4+jy4sxEOOl36dfyRxfiF6c2BjdSOJs=;
	h=To:Subject:From:Date:From;
	b=NY2MMqxC2yM0nf3e7grR1RzpcTABEtHML6ZOu5nZ5MVx6XRbiB79BOBfmzXqrnETM
	 mpfG+jk0i/807a8sgNnY7FV81WSvkVEJcsvZtnJySjSYuVyUEPBjx6+UCuLtRa6I6l
	 cQ1ikCBndwrCGJtPRCDZqogu/4EMHn1+jg07R1d2LiDYHYlR11X7uG7U0WB6IOVuRg
	 N+S5m+TIHIiPzMhWc0teh8aelCxWjT6k0ynKOyZIMVqB2HPCEFKDYbobSiwiNQ6V2C
	 Nmg1d4umMIWyCOZUBjgNNSqacLGYy2Hd+iaTRfAutZjUW9lsgqe6pOmO1y5qj2uSmO
	 cCtcnqlUjwwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C98C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206928744.20702.4776344462137432125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243c47eab6c28fabcff833dc2a817beb70ae1881e02829e94ea007bcf72ed2c2
Date: Mon, 26 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672069287
