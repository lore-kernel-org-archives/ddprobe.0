Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86281859
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A611C433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673212287;
	bh=10U1XhUnAXJzw124vUwJIVxYsCjwCBWA3YOqwDgObe0=;
	h=To:Subject:From:Date:From;
	b=EGQZqte8CVlPMcqaCXXWpcdItlMsaWeNLbNTZWfeDep+CizOxOhactjuCruKMMuke
	 gJUcCGPy2sR8dSvb3joj6aX6l/fADVdkQR2c1NEq10R8BcV9KSO22G2SxiFGnMAXO0
	 3LBMupQ2EiOkCYkszxJ3ln7a++izdotb8DmqRXhVb5cS4yflPSTl6dq/Fxyv4d48bv
	 V1b2P7ncOk11HAXZ/svyBbyeVvkvQ9nv6Xpiov+6sGz2MnHz6bT/k3RzM8acalI4lM
	 JPGfA+kG7MjdGNXWHksuSzt9LhHN4B9wCPjYtNcwAMCRBWihl7Do8iuvd5aNzkUwMi
	 Cj+YU69h/qeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640D2C54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321228740.23077.10286412041974885938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123f08290633faf423dd3df7e12f536e0b00f6683e9b826a0904e65f2156666b
Date: Sun, 08 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673212287
