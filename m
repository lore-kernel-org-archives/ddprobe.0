Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C9823DE
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72B3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692532448;
	bh=9RtRyPIwN83uuRIzhT4+6dOd6qrHvMRXw9nJmpHyxeM=;
	h=To:Subject:From:Date:From;
	b=rLDBl2gx5PMcbCDJfEgwfytd1h5Lpv4KYJdWgNXh6PJN5VCBalH/aFGqBFnsOkDr8
	 2/lyjaKo0D4TaHkjGSU0fP3hCKMzvi5etMv630PIXoNJfgFjV0Cko5V7Zib5wfUs/d
	 j9yT4MT/ev64IWsZ3DdJPAbI05m6+nWDT0zd8kiMjcgaFn27yop8QEkmLNbiida5Nr
	 t8iW/lajpvl+MvOpUnX/OuA2gpvK9U1vhi2chYIQ3qdaEfbGT/lBdJFj5jF88bDJD3
	 tgDoHjza56MzeYSQl/mBpHMtI8qHSs3VHUVkjGdknN0dyXtmvQ+JprK/zzMZ3iwzpm
	 0Z5FttQKmk+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A593DEE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169253244867.23801.11924024017098493975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97ff56631bd8079277fd802c984bfcbaaf009341e59ba76df0e9bf236efe021
Date: Sun, 20 Aug 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692532448
