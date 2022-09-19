Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8547462
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7792EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663615853;
	bh=OcXmNoUyz+MGRg3l9i7G0SmFt7r+G21420YKJEzqrgw=;
	h=To:Subject:From:Date:From;
	b=GrRQtmuLHqkPllSmMn5BPOPXoqTpSkFBxWDTgQKHZwQdypm3ZVfZm1k7mCrPTUf/E
	 yMiomZssE5iHE1d7bpIqGDh77N6H2BvpkhXGEtIVzOQKM/DZs8C4UVbav/vMZ/XTXE
	 xGY87yFCgQIM0O9srairU1K/bz0ssR28Y1WWQhk+6vX+wdKE4LVL5owzZoLvcjshTz
	 M0uAHHXPnSvKlHhCe/N1qOrJw6cbM8rT12rqRS1j9ZFIb3UJmp0IZRYBL0ET2lrA29
	 4ZtrJRHhXfoxyBvoeACvFHo5pIiDTyG9vwYBoCN3wbWDarDQBKMvFOYsO8xIYHx/OB
	 gmPlRcbJLAYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1AEECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361585335.940.17122750518151269049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a92b3081fa87713fd5a1420e1c9ee020a21d279bef0deeebda13960d5c33e5
Date: Mon, 19 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663615853
