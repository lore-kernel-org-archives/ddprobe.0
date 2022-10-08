Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C596EEDE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7968BC433D7
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665239453;
	bh=KW7lwgOSvFfFnZp6JAhJWRtw1QjnsanD2QN7FBZa0CA=;
	h=To:Subject:From:Date:From;
	b=kG50h6MLAACE8YC1p9az1pMwU/feA1V7US2PaKJEt8uK7iE41t3OT5sDONPCnt/8Y
	 eTO6g2ZfGxKOMkALS27Ty3bPnxQEqt3vYr5rkAkKeT38iNmtgvKPQ4Q+5suNPKlJLc
	 sUhnD8GQlz6dywIx852dFP9Hv3tTgGRVWKYkW8yCvriRlqXhDvQlr6ee8xm5PfAgzC
	 OejPzwOydrHTo7UczbnNU9BlBNRyiIGFiP01yqDBxDOGqdcnkJpTjszejfoWxUfxz+
	 DH1cxEc3u+lEgiCdSRg8J4QuYF4Hok1VzsLcUda67fmreClhkgGCM8cZ4yV6cZAIJ7
	 XT5XOqYpqWLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58999C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523945335.4636.3106836595511773372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2d7ee1f1d06b1a647b087a27babf54895f8f7990bfdadd62d8b1df21ef7159
Date: Sat, 08 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665239453
