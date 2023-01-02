Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28C05667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8459EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672677687;
	bh=KRY3FX8RtdJ3acipXjFLAc9m1guOzJguFXBpmteZvxA=;
	h=To:Subject:From:Date:From;
	b=pnpvzcyfzI3Qt+EB0KrvWKWDXFw5vVV9H78pttBdkSwakNMbRX1Tq2OHbpeECl/FJ
	 NViZ2ZCkeEW3AXaletDY/R0S5gR78XMoKs1fApOeZLyG+Mrnvv1qu3rCX6IMtrr4rk
	 IwmuO8jfZUqPh8M8GG0zcVTtml3L99dOaNip1KEOhxb6tqanLhcC1rVvYD5PXU6yFw
	 tJEXc428zBAFq2XP0A15Hny3pnEBU248U3pYHRRffhqzCwBG9+MFGbzzfP5mJmhsp6
	 AzNNJ0IjokV+x9B505ZP1RudeIptEfHl4l4qVDwzDCysGTEXygXHMVYK5+4M1U6pzA
	 kecq57K8xQG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F21C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267768741.6796.14010618830762880865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4110f0445e9dedf35a065d60f064a93276f2f3d880572141155bb9df783c3483
Date: Mon, 02 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672677687
