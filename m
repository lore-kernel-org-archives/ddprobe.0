Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049BB1842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9660CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673078487;
	bh=l8X5k+DvzUG/PyAvE8VLm1sv3yrl6E+fm8vKXvM41Qo=;
	h=To:Subject:From:Date:From;
	b=Zuet0RdCPYCe4tM5encx8wBdpjWOAIYFHwsrva1RMy+nLbDurleBZ6WwMJQv7n0hz
	 vPIsD66tzbLZg7CEkZJUaytaIDA+koSXCrEF1n1b3FOsVOsjPGfOdjyf0QWrZOhnq+
	 26/t2vcWXX/pSRFH97jgOHDUrUTPrFcAiMx3/u0aJOn61jk50FYR2xhJfKeik76GIe
	 io/PzA1bx54XXOQSsLGHd5f/26JsZNJJrF7MC9DpF1MZLSIsh9oYt/wY6cLcnA7DZr
	 dZ78nClu1z2jXusPKlTSXkA1xjNYy5aU5HuvysKwqjZA/BKOD5xuZgJyKMmg83y40A
	 iVuXln9F0c1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77993C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307848747.31170.5708302555195429979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649746ad19ae293fd62f929772e6f1c2373c4b691c142128f97ec3704003f01d
Date: Sat, 07 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673078487
