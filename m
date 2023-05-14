Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226301376
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 06:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF479C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 06:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684046285;
	bh=IjtYZ/JcMPW+iGNq0Xc6Qsl9UzKdjgs0/C/NmnqgGaM=;
	h=To:Subject:From:Date:From;
	b=F3r8YjN8JCERq8oogn2bvRkeNGWoBk9TUDr4CDV/ux2WMMrdVQ5l1xTUDiSk5vbOF
	 rrrjGp31g+sDFLWS1SBnMwCJZ92gnIiHKsDH/o1v+f/nUZjep6WVzYUE8g6cvPvwSP
	 rdtlXbThNWm6CXql24KlRPD6ZeHxhttXi09mIKsqUTtSKkLLdp07fhLrwR8JIOn+3D
	 cNtOj3jaQQj4umTtBjYz6X6umKRimilrmk5vDj/TgGIzeuL02odxM+/mSwllRiOoR4
	 3Ntgw+4u2plZdDDL0n0aTtAqgdg4I/NbYModbKMKpovLdkVNjv+5xNnmMbPlSKfYFX
	 vlez0QDCDBVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D3CC77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 06:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168404628573.6272.15105402448972847909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e0af169d686fdc932d1c0176ba3ba2caed5d676ddfcdcaa6f8b7e94e212ae6
Date: Sun, 14 May 2023 06:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684046285
