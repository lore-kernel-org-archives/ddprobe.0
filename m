Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00248A460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87702C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670533887;
	bh=jAoC6uJaEOoxI6pIbDxGXzBtGwR+V3OAwjffM+08oaU=;
	h=To:Subject:From:Date:From;
	b=qK1y8NxdNXFklJA0gvcqPlfce/wSIKRj4EZ8sbtA3KTYRJIeFUG2uNcA/2jU71OSf
	 2xsE3TYIuPLSM4blNe59C+ZUMwjJtlzwWvO7j5cMFzfRgL+U3xvtVf+4oSgeEsHtL9
	 +Odkmz8irPH1MMlvF70zViT5vIfQdW8bdulkUZA2hZ/MtVZ1EkK1L8zrneqy0foOaz
	 deKKG4yGRKKxM3kkyiAzay66vIfFcR0gIGrt2eDUsDnk42DNBRH3Fnj351WkKrtqhN
	 oiLb3ve45y5cw09vCyMkRpV1fDXu+3xfX2Wz1/XMJ/3la7sXEcgmPRDpnLQHioUJqt
	 x1zMGZZcI9Liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FF0C4167B
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053388739.12724.1899430503520464198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a57da18c249473dd64b1e21573f941ba42ad31bfb7ad6cd1811d889b5df215
Date: Thu, 08 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670533887
