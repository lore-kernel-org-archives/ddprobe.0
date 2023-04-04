Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB636D22
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5E0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680616025;
	bh=8eMcqUnr0OXshRsyvoYvHzIeyT7S0aJfh6S24cxBxqY=;
	h=To:Subject:From:Date:From;
	b=ELaMIuFY9pG33nPsW2S/DyDj8RJvKYjtYo7SfcAnNquO8UjdMq61zt8vjHW4rRMu+
	 QXVOvNzmnODob3e40WvhU3FY7L9E73JU0bFav0H3Iy0EEjCZggEgvnw30Hay2X005a
	 XIIb51vH4JKThFc0dvLRiXBfUpNU1Lwtgj4En8chEGbpnEDa/teeaoZw/ffeEIrzy+
	 ChMXi31uc+RW1IEDyGawDWKXLRLjD+RpIMpgUePa1QqNl/USK1BpqNCaDzWarvOARd
	 G0pKw+BcYPZ0yArl2wocPYZ7QSrsPZY8LiAuobjAvRHcOWeiWp0c044C/nxwbLFdiw
	 wWNQAE4DUoUzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA1C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061602576.28125.16299293030807371055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a3ba2da6d6944e5dcb0bcd6b58a13d680ed07792eb62b4df7aaa390d2f3577
Date: Tue, 04 Apr 2023 13:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680616025
