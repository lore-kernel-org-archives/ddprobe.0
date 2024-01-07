Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262D110A1C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOxxQqyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C24CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704652696;
	bh=pfpW8hCJ0keQG8Yulh29wVSs+VHFGi2nFdKtfyr0AoU=;
	h=To:Subject:From:Date:From;
	b=gOxxQqyBH8wi8lJpSVB+y7fEflfWjXUMaLB2btiP7Wdnr4i7YRVeZgyhunk+8cH8T
	 TQshoFJk92VrsLnzvM79MjW/4xBikWDgzm+LgC6t2YclsF3ThERH4vVnv3cexdbchV
	 CHqrpvFO3pNlBXJbN3qKCbZomKm6udb2OycVHYkZpc7XPnfFZ/oNkLASw6ShRuZmGq
	 L4wtdH8Brqw8b20igNmwtpwSKCSgsbPmPCYJ8F1z3XUvnln8InzUWGdmzbS8xbno6X
	 Cs5TNkclCQzuh4ImJA4Wa67kWxRRJ7NOIwgsbm/5HgzivVB/zJsgDuU3wqYMIlLhRj
	 DZ3gXVTATQdXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA7CC47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170465269637.15796.12995783948089408980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a9e92d6b82e2e33bc43aee4f5085aeef09a70fd227da5e4cb20bcfd0f615ac
Date: Sun, 07 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704652696
