Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54557653
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A75C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693976048;
	bh=l07tTyeHMgOLfPlWuJ4jQRT5+9U5DqFRIsPKs6h8tMg=;
	h=To:Subject:From:Date:From;
	b=Nd8A5sa3PIVPcS5zm0CQxMow09dTX0eHhd7UhH+0pFBRk/TabdoQKcVDiTQ5LAlmB
	 tEbgXdsNXHrg2tmpnRcF7Y3miGu11pGaZ35YpQsz3SzI1QT5/d6DwNu48GlFmwwpAD
	 6Uh2ayWhUQcBOWiBFXTxkzxfjqm0BDw9jn/iClwnJypgbnMoD0d5nT+6kTjwYVSukd
	 xqg8LjdwqcNrjGFjxR7KMRkJDULiY8Ejth4X/8C7jTGEZcYNnAmcbAEcKLk1ig61X3
	 rt8pxb01nkxfuZiTFuVNzJJQQMmgaEUNX7qafwirUJJwsvEYB8rfea5R2CSTf75aa8
	 jLqoQidlfUzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E3AEB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 04:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169397604867.5121.9939680796283061277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1387554851dc078731cdd57d1a7788ccac5dcd4cbf32a3e2e52901e1e13d422
Date: Wed, 06 Sep 2023 04:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693976048
