Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C92A23A3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk+cYlpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8236BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703616496;
	bh=syiFK13qFWP2wm4P0evs+NLU8K5+ommullSDC+EhIg8=;
	h=To:Subject:From:Date:From;
	b=nk+cYlpgTD9Peuc7VXeAaqX5dGhFDoTMfZ+PkeBFXYMo3TEqU0+EILtVSjEBu6jHE
	 5O0WrkqHzsny3PjULiwWjzoq1ISNN4r1Z2IZ2UNo2uNMHJpV6tSL+6pjWwYi7EOj17
	 sbIAY0PDptgiaTIvP2yU4L61AFlqQ0MxgeFuq95Rfb5FfMCSMmok8h0AZo/WHJugzx
	 D2NzYZscTlk/ZRp2vMCO1kxWJiwPug0Mw4JYb86nxp5zA9vZLQoifu0nb6Cap7f6wG
	 YN2dnRNhKQkwXQ7DM2XpIwKyl4Qe9+JbvbAlK8k7iToks4yQjI4tD8dXtQblG++Joo
	 hr6k58bIxCdMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610E5C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170361649638.13904.6006500741973194091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8ab0222465fad40a03678c6144a6c83e3575ca76106cbae1500191798e5e92
Date: Tue, 26 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703616496
