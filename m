Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E7EC2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 03:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA14EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 03:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679284025;
	bh=kEMv1tITdWhkZu6kM+LtdPe5GMcDmzY+bEHGomXfbSg=;
	h=To:Subject:From:Date:From;
	b=OJwo8dPix62DgzivKDny+N+cQUK4e53hRBqes4PquLmPnPjd41hukisacCs8N73ge
	 scgxp4Xo80s+XDziWkZb++yaMbfdmJV+6hkVyXNo6NBoZcfW+iZAADTVcIexeeNf9c
	 RaXwoLHib7nIcc05Ab8AdQzYgJ7y444zSvMzOL5Rb0fbgk+VB3psLKNQmODldbzB+Q
	 g0SE8dhCJAqJoUoDgfGSNhPhT5MDqbvA3QKxCvbeQvDTBSfwCj0SdtKpbDAz7XKjVL
	 /DY3ZjSigz2wQKZr8bPdoRKbk0q3stW9FoQNbx8+G7mxBoZx0ijM2hNJ8HTaQhDELc
	 nGmCalzaUx98w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0595C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 03:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167928402577.29567.11810525329254086597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8d302ac0993a841b24bf21e04dbf9ba92f434018ca8efdda30fe30e930b7d3
Date: Mon, 20 Mar 2023 03:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679284025
