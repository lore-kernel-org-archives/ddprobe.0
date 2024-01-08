Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FC8125AB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAJ2mWp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804C6C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704704296;
	bh=3u4AaMLCv9k8ZFM+wHcqLciPaeILQBAV0PzsF42tccI=;
	h=To:Subject:From:Date:From;
	b=sAJ2mWp036tdeWcMA3IWEveU17TKG/sxMikPRXCOELPSYrFMndr0aeDulFb43+pra
	 3VxjD4+LW4B8ol5tbhCv8q4/a3INbG0V9p6YdcEOuQZQssUS62JXWftQef6p+l0Hwg
	 aPo1yi97N6k6eALOtdbsuKJtTslen3MaP8kLBNa/9vBCj77ErU0wFxM0oaTfYiB0bS
	 4y1a96DwpbSU4xenLvmkra1/3Kif4DaVJD2DMQZ1D4Z/HpfJWJ/vBCEpNK+Y5N7mPy
	 ac69CMDkLSs82cAXfiy7vuCQtxKchOp/K/yV87A54Y9qOUP1Hl7v1oH6q0VwefozVT
	 OSdgsZs6re5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E54C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170470429639.32543.2756097943108537080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61cd176b4018d76936b686e2a62209f76a3c87dfe217244f6a204720ff34738
Date: Mon, 08 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704704296
