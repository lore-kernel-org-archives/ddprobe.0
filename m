Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E750F19B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C8DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669538454;
	bh=HD+yRRW0okSvmJOjrGaAlWhPNm3r0fnOsw5CdIZ1Igw=;
	h=To:Subject:From:Date:From;
	b=uPGZ9QFUWGKjwJ5egCxxR/Kf9Kspoes6DiF0XQMmE0RbnmuXTzoKlTfBnNzGdk2/Y
	 1Ob6reFG+Nqtn6pDd6WhsRUDbQTSGEbqZkgrMvIkDVkRaGb/5rcnHklZXOUOthxeaP
	 lkhF/VUAg4v1mO6r72NimVEbIg62Wf8dF1WOuRtVau0tTnlj0a0UnsWYOCyrrM+ist
	 m6kQn7U2sK1DzqNTId0XldbVLhBt0f3PqtIXrywHKH12nRkdDeL64VZ5ny/mtM3/sS
	 v/JErP3X8ab0yP6qVKQLoTNiCW7othAvELieovbqqq3NlR39MWedjYW5I1oCKf19VH
	 r7Jd08VcfNZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5475CC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953845432.10111.13633112654796568873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f164997910d36560c6261990292ba60982393dcf833b823d2319dc1d9414657a
Date: Sun, 27 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669538454
