Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5155CED6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF663C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687789988;
	bh=zdHB2mgD6zmZUR4kAZ/DiJFXalBm+2JAyKrIezH1uog=;
	h=To:Subject:From:Date:From;
	b=KspA4pPv/DNWDUQYnbEBsR7bcYWjC4yeD/+6ffxWa2RG+BJX8xQCultBO1n7EcE7w
	 uAFQ1mf/pPUevbuOEV6wXOv136iXhmA5D364vipdihfhBTu1iz4bvxIC8XrXFsTI0M
	 IVP9O0iDjQrgJlyFaDQ1mzeS1PSPvSj5kvfGqMYYrfvODW5TuaGjip23e71hpXyAaU
	 UBywofBfv49pSrdA170pya/fqSfOOciIWiPcfYh5SE5nwR0AfVPvfkay3ET/Keu54F
	 L+Pj9dsUzNBKBE5pDUZoZWhjj22b+dFG5EaXU7YdDg9nB+myO/zpm6Qa4TqBOHgwYN
	 OSeRtMD8nNUGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F3EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778998870.8558.16681110331847441595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c9acf9d85155ff2858542164b2754710843fa08759a67a213c968a9124a492
Date: Mon, 26 Jun 2023 14:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687789988
