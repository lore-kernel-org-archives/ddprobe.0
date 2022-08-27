Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B465D4413
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704F6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661615452;
	bh=LrFZ28ClRWB3uf+zXXMI9Srx2xFwlw1F1U1jn/tA2V8=;
	h=To:Subject:From:Date:From;
	b=OJUoSolqRjDBFX/E0lL9XrM1lyvk5NV9jsKm+BmRSzIVPd4alO25whuy+HOvdTxzX
	 Kb8epFS8Udr7tKa791mqV6ZMxoTOM1wtsKi6OfjPLY3m0WngP2iOArHHqzV0+6Rm1J
	 tlwnSMgRAmXWxBcOam+6AIT8Lx4D8gqzOiFasuSJtjMW0F1aYLwIIUBF4UX+Th1nXX
	 ncQwFcslFPyBJq6M/BbB0SQA8M9WFrMgWGlhirHsMADeHIW9XkZyKb9c0+EMh+yNmf
	 wcGlGL+ovDNtuQzMCh0PBcWxduaffWV4xhvzERNNtvJCyIb2faQmqhFAm7XtPgKfff
	 1n0g9s05ZetWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59185C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161545235.23175.9348133544447297549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f817309dab793b218a77bce71a357bba7749231bc52b354946793995381e042
Date: Sat, 27 Aug 2022 15:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661615452
