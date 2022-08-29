Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7ED95CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7946AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661809852;
	bh=Q93wcOHJR/W8O33aHCZ5Ga2XZGjncNCQh7LryAoJnA8=;
	h=To:Subject:From:Date:From;
	b=oLmoby1aAkdnOoWiplQ2UJKiQ8qNSjFM32GjR3NcU+FvOG5tr8Ond0suieLgnT6IG
	 USYM+5PvfQSjCTExSU1S0jLLIMbTjr04Zu1/IuDLHrfLnzBerVM37EzBoGhg3L2xYh
	 INqVz0nj1DoZUTmIVep6MSIFAAk/L2fT1E8eGpYUQFLdYmgpAUYpFF7BAoCGQ3qd26
	 quIJbviS3tNHNCsmXgIx6bIfCmjTuZwIki7IbpyvhbnXaPW38B+KaW3xMmHNhcL2QA
	 SBPkmKBAjL27XvIC2p6w3zXhIneJPI3/nqNo49cwh46vP2k8hoxEGUbx+gCWRZ6Wk1
	 5SFT6oFfyXBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8C0ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180985237.21149.7851435725067003019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39466d999703bda892b3e257c81abbb7435a50e6cd20e3bf4dea3319fc093e3
Date: Mon, 29 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661809852
