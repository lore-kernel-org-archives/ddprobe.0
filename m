Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2579443
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9113C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675814345;
	bh=aNCeBWG8j5LNSEcrIQ1mBXoST1Za6zvrjDJhYqpLwO4=;
	h=To:Subject:From:Date:From;
	b=cqafMOxjn7Whox6uNEsqLQYtqdaOKI8OCGAS76ZQpL2ASBLCHbTmKSeQjQnd/SSvT
	 6VQetuSgqmq3Z6bNMkr6tepfNtQ29zhxCy+vQlY7eFPkAH15ajMBD+BwdTxA6arqFe
	 mS9N4NAkwrckeGi8cdeNlh4f8WbFE7FV15V361/URrdYVc4MVLj2FQnlLQIl8HlWHU
	 qhJxkepTWUqWMbxstsXPmIQrRQ3SicS+cQJ6zwtzjSy1rOekjRGAG8DvUFPExkmR6q
	 fzmsM1MDjvrgJOzonLoY64A2oT+AL8Nx6o2/cP0BYxK4nSs0AjTu9Gb9VdaQeNaU+x
	 PwFK5C+Y7l1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2CDC636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167581434582.29817.16683911231019172012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce7d46814f829e237bc5438cff7a0766b2e8140e14e6a58852ae0f7158fbd97
Date: Tue, 07 Feb 2023 23:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675814345
