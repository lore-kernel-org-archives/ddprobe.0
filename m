Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34746FA4
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C96C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666722053;
	bh=luzWFKx8AHc4VHRpLEHS5HyfEEu3GgYraKm8pVLf6AY=;
	h=To:Subject:From:Date:From;
	b=D/c5IqbN3oF0/MqO7gMhuKCtqXFkbAa8iQQQDFd4bYP1BL1m4C9YSacyWNaX8xyCS
	 WNJmycerRTC+Vv5GhsA6aUENiSpT2P4YCCLyH5rsdL/r1Y/0MT5/uj8IwyfpINwjjK
	 ITx+tF1mlgzdAP4owYwJGjERNDrH5iWG+5qmyKo4wyQgljRpQRyoGGLLjLsMjEul5U
	 nMkHKjfW7/THACH8bkJhijq6IrOFzdUD523MZPzhgwYQTxFowDlu8bGoA3hi/yF0uE
	 /NU/gFlbspFC/5XU/FHtxBVQ0k4ni9j2LwRS3p7woUdzyZ9rUQvZSISCLhO9IVfPuh
	 wPvTZ24qe+/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBA7C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672205331.4979.8068758252031811776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa25b2306a49f89f40e3b0426c5a9bcf0908fce2a9cf6e446a6a5ac89c9eeff8
Date: Tue, 25 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666722053
