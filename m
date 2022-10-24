Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDDC36A
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFAFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666571453;
	bh=cWeA5Wqn3MgFyZcm6XTV6Re89Y2PtXHHeRHvxog/l0w=;
	h=To:Subject:From:Date:From;
	b=Z7cx8n8HyLdPCSS0v2Q7xK3b43AoSkwv6TnoosRXBLMk0uB3lDmLE+bVQh+Sm03vf
	 Ynt7QeDjIFA4si5aWHp2Dk73+n+jyzKZ8cXeOQ+Obw5+qN53pqyJxdMH40j09TpulG
	 g4wLCRa95lqqmda6Zu+JKmgGcguvOwLhBHvB66qsejMXTaLGYCcPUiBgadMpgFh1z9
	 kBKfV4Dds86+1qjn9J50dSv8zmpDUzhJRtLMQY0sOM8i4cUITvmqaxSSHf7NQ6pLko
	 yzGaxG6pfrV1DkKCBAl4Hl3t+TgBvZUIbPLHBtOyKPriVGgJCUVkkkcSasDEb8FQ8n
	 8WsY4Yo5VSYRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5408EC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657145331.18076.6528522761651013224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6dde1a773b8e0955ea97860f931048d3b5abd0d195356765d4c248b2b05fae
Date: Mon, 24 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666571453
