Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C39156C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 11:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWSjAOEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BC8C433CB
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697022428;
	bh=gOgTasA61znDOGlWrFed5cf6F3NNmKwk1d8SzFY495A=;
	h=To:Subject:From:Date:From;
	b=RWSjAOEjKBEuB2Ke+SRQ/qhyKwJ7iEZ88lIbaY0/kXPpgH8nJmLWvf5NaCUl4R1sF
	 JlMoKvb97sCjz5UBI15Tec+jfM0VI0rkUkabZxfZuHuvwKE5hK3WEWRHMkw7zyS74i
	 bYm+F9Zp37ZR1vsaAmfFm6qbLDNzhnlqypUhbSdV1RkNWrsYzeT7XHC3wuDkk3A3KA
	 c4XQOFJv6PYdLWg9WS0H7RUIiTPVKMecDmtDxWa6TmPVhD2tb05hKPW+IF5eijSwYC
	 EmzIiJ/pf76HmfzDsA2mu5CpcswydV4TuUcUIyhPKijPuH7cm8gce05AadTsRdKf7g
	 OVMa7defX4Pag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC163CD6E5A
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 11:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169702242869.9914.3516336752327468631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c494f355f95eeccc187a8f5dc510ef2cedd7d74bd34d080da367b0cfd0bbc0a0
Date: Wed, 11 Oct 2023 11:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697022428
