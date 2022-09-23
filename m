Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04444434
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B11EC433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663965653;
	bh=+eH1SG1yxRtH25vAMiyr6fUc1WF2UOwzwbIlHtj8wl4=;
	h=To:Subject:From:Date:From;
	b=tINS5eneHG5hoDTorvCEztguRfzfhT9nRyU4S7Nyp/BPaWqq8RCjbTVPgjuNyb0ao
	 waNVvbLtBVAMdi/1PNi362UJedmhI/Jum2z3T0vOJwMwQ+kCwL+g74S2I54flHeDK1
	 mLZZM1dPZ9WyGBhAGghLYQ9V+s5pg1dDfnTpYUMk+mSzGSBE5IdmLQcwU8O3/sBtql
	 X7nKicvNdjEIxg0ylqoi0QC32NZVFsTniAX+uUbVLu9YZ1lFGChj18MZLF8xOzusCA
	 zKyJtVO+bLRUek9bf+XbJpf7hfvbedF/TUsa5QJgff/1/zpAvkAJVUtI1T01yZ1JIq
	 2L8+iAhCWUdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7D8C6FA83
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396565331.24751.2492797283703216231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bc79ab1c36ef9ad3523f1c984ea4f3b1ca87e4eba939280d1ede54b0c8267b
Date: Fri, 23 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663965653
