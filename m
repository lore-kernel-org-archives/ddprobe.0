Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6CB125D2
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E91C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692992048;
	bh=CxFM8xeOxwJRYISpGKWVuCIWVqTg5xxXaULZC7iYIHk=;
	h=To:Subject:From:Date:From;
	b=QrpJydlL2LuLeYPbW6ozb2MXtP38klFvgrwCLAY0HCtcqNvLWn+axvwvlyBenDVNj
	 iMx1nvHNMGC2yI07bhjWgxR9igenMm2Kt6ubMwP/JLmePeXOiGyNI48UixtyqM0NgE
	 h+VNNPq1xRSrUTS/JkXkyy7MzeYI26aAx7B7RA7BS9r61I47lZInWfH0/gJpwpuRQM
	 dV8Bxg7TeDc3beCRA2HfJfYcSyq44saui2UP19wYPCpghP9rD4Lvhi73XN6YWeSxJm
	 t1c7QZCF6bgC5wD5EMkZF0vdUZdtlnrPPO/sWd51oE1/vIx/mYNyxjHCbH2PSBcQCZ
	 AvoC7ZttARCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE768C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299204867.4298.640099217110004356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881f2e8774321b4783d1ec51050cffc7d2627811ef8a9ecde25c33adece076c7
Date: Fri, 25 Aug 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692992048
