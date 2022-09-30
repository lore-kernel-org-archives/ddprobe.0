Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71F15A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652B8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664559053;
	bh=mGYubMr+n4J+DPO+IOhzseOWpK9Mf9MvhybajHapWcc=;
	h=To:Subject:From:Date:From;
	b=JC95H7Ke2Rl7qmlavGwNcTUSOYpJE4n6yeCmPesKj/eu4QnQ9dWrJcYZERz5eILkC
	 gVameTZLSRahvWwJRMNbq0BwmCiDWrHOCykvSms593dtfAMnLc29TtdWfIZdrlqo3O
	 fkHHcQQ2cImR35s+ZB/shS65FD+uV3NYzz0Sjmp1mFuW95ZjloMhJBS3hUswx5so//
	 63sQn4XDFF8OveLkQa6kD83g26X+S9xt5Bm5XKZK9+5gVYeSQTLDW3TdZH7jwDQPZB
	 JkL/ZJugJhd90Sa6uWA/i6iE9BnR2ZAjWgKGmkiuv7pNP7k/sMbifZS+P7Zb2WTpWf
	 gi3xTcySlM7lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5096DC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455905332.6930.8990906797045937470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a60a5780b1edf15fd4b8ba9049fe134308b1e794e940862d3667e31c4f63e9f
Date: Fri, 30 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664559053
