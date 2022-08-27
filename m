Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5B03C1D
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A44C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661601052;
	bh=vgrzfDteWqJoe2nJTEQ5+sUwIr2rg9EfQ7qX8i3MiFs=;
	h=To:Subject:From:Date:From;
	b=nVgw08Bepj6cAA7HOfL2fFUB0f1tIb5ICToQyIFX7XZKxmm7RRhnAi7DjyzGN2sX3
	 Ro2XynjDfhnd9yePJAh0YeALbrBNMMpPLJiSHXjjotWvE6+Xx91BPbEelLZwwMAUGJ
	 iBPoKLBoN+sU75jTmH/KPjsqBnrKtSoX7UhFA3ap7w48s9xz5dhk9B1y8rz5jYCghY
	 uIHKw06waK4v1lqq/lKbnvbM3IBOhhgxfiSyVMi+iN/M6X1L+5rgl8Cl4TzBiuTJ1e
	 aR3zRGofyJmtxkCiZF7b2CH8UCwKK5Wc8WB7P5cn3p90dpZMD+NcBlfAUlZhkf3H04
	 OmlJyU+Ns1QAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55839C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160105234.5016.14821883400295362567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5356e6c24457427d2372ac169cd1541f0153602260427b199918731b307c16c8
Date: Sat, 27 Aug 2022 11:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661601052
