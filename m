Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3807F15A0
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CD7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678596365;
	bh=vBaRN+vIGu0P2ZOfkidmmOQyoH6znzY5pJh3bi3oTN0=;
	h=To:Subject:From:Date:From;
	b=CMD523P4n/COhMs+iDU2NkpbUBwSmSrG7ZOCsQcNaEtz7TBKG/2jRkn5Lt+uJwB/M
	 E3Q9IUgOhdTWJFVtGeivVEoJcN1xlGbTlw/h/qK16gB6CrRVS3lzf0NZWWDJ2HB/hY
	 AsyvukGpoCnpaoB8CdJng9rCAQ7LRGAdJAdxkAo5IayIBcUXkw0DH59Abcr7Snnxis
	 Mq93/9jx75jY4ntSzatUsXrHsZst/FpnFVyOk4RqUgscepY2wpeTkX6HfnVM9QNZJi
	 L/YlKd9bLLShLnceGWrbpGfL1utyDBsdvssU+V1LD3G7ZfHL4ejoXbtRkqa7d7TrV6
	 cJ8CAxM7+KM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF712C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167859636576.1343.6292344040974372703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edd08f4ce6e462db962ecaa07713490839f8c2583e9a305af1f3ed7062fc41a
Date: Sun, 12 Mar 2023 04:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678596365
