Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6456B7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD70C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689907928;
	bh=IWCCrv+IveUqDb9kgYtGYN4A59l6GBOtVbb969rl+wY=;
	h=To:Subject:From:Date:From;
	b=bHlfa4eEdbteaBJ9+De4IRGDD63YZdl4fpm+yAdXnw9GXtNtCRIdscSAGzRMYImE0
	 MNg3c2zZ7KokKRaRO5MnQQNeplEGFSAAEcd+a48tfIS1Qq6eszePJP7cBIXJhzVKWU
	 2hQ+kiOK+umjg22xed9wJI0d0rZfqa67IdAGwgSrt3VhqBgp1JBfowRTBnEb+OBqBk
	 e+cB08nZ5Ujz8aDXDirCZYyv+XnnqSsxlMyRktH05t39nVRld6/nfzx0EUQrGOBJ6y
	 276prxsxhUizdDcMutJurEJCnLGksQeovUBJCmHoki6HbjC6dNdcnsMUon5gj1s2ws
	 NeZkLRkOZkoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9660EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990792870.32060.8840563315329484374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8127d7218769c32ce249aff24daeac071932b949cb04ad883fda8511265b4fb4
Date: Fri, 21 Jul 2023 02:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689907928
