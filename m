Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FF25660
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96E39C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672675287;
	bh=noAz7oHyVIEw0e7XArhfA2VievtQDDmEEFXweQLCHfw=;
	h=To:Subject:From:Date:From;
	b=XwCBUdatUzpl+YL2U4UQOR8g4kwV+mVBumsxWX6P87gb6CI87sci7K4nRZXvIGQ4I
	 WGjGv4UYMIr8HmIySyphGJ/hKIC19+s3xrRNXcCxy9hYbW+ZVje4goc7d5ae45MDpc
	 eeaZTrSGSw3lEuXmqd/2oTPKfFmnU0lydJloG9SO2yFaGMW6S0MvfP5SbYcJzhs2iK
	 A4QP4tWrelIDhgMdZp54VVfuvgzA85RWCLSbahBpo+HwS8duhwCtU2JAC4yR2CTKaC
	 RZsX+SxrqemR4CUhzBDOCo368rvtxkxt17UwIkzSSFIzRcQ+MrHdqvS/69arb/Rx+x
	 1nOgWU3vWrcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 773EDC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267528747.22781.10862744822154255749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb2d74e9af4f4cb013cdab7d9767d764dee6026af4ff0263bda19db2d0a2145
Date: Mon, 02 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672675287
