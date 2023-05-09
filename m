Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F218C00
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 20:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F01BAC433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 20:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683663666;
	bh=ivCaSgSVgsNJIl+cg5nQSx158NfRMN+IlCTXN5tijrA=;
	h=To:Subject:From:Date:From;
	b=PZD6UynFcyKw0t5YCtgOjvs8NTWGR5X/LQQmBtxdMTsquYCHezPKYcJdfZmzK5enC
	 s6gurY+pQBS8JVUhYKorO98uSxD6q1dSIZFdL7+Ul8p423MA488OR9n09zEyLHTSzT
	 YVCRcOu+e+Q+HuLTmGDKlIrHA4QEaZhrutryJG8F2rulRNbFgyyJo4IKn37kIZsh0J
	 PFXRgxQaXYsV/zPW0J2l8SKP+gqNaPNHyKLzuJXU+xY1NSWAB0qWm1vtRNY53QIaci
	 Rdkx/ZAk9d+KQ9nxYSn01YTycNYAmbAL7BJu7Ykskz5NoUvonp9Fu+G+UdeEneY4sw
	 PSxQHHxamMg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C66C7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 20:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168366366579.2724.12534119792953884555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085da240848374fc3b894e677c9c318eacca83f909eab3b30dd657100231ba13
Date: Tue, 09 May 2023 20:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683663665
