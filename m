Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7020A7F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37C2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688935028;
	bh=WNpai0qmT5PBxbmXLwWS6ZRMaXpBtolafWlJPnYKHU4=;
	h=To:Subject:From:Date:From;
	b=Qit2TTPCsP0SYCzQhODmvV2ELiMtMXeEeLhewv8c/Z8Bi53d8pUfLVO6Uf8EDBD7/
	 j95pPTYPDiBKFO1+Y0C60hnCwxJBVQ7tm8j2rRbcYEkHEMvaJI31Ak/HNBPJ7zg8B6
	 EMZWqrGA0beDFCMuOnWK9bblxkVlnbXLOYBGQyHPiZZwNkbDE4As9/Y+6os6WcJmPE
	 Y1XBup9wwwW2wvw+yEpLm0/wNybkhXffrv1zyFhnPSr5418ILyXe7a+aCXVlCkjq9c
	 8KYvJbcMrUcfQ1i/DJgXKSbUwUvfl9H3BKn1SvmwCEkR9cVqM/1+rBXcDnYBo9q1a3
	 FfxnXuoaRIQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5950EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893502871.10089.10180443637233080688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172cead99afa8f103c3738a1ba070be24a1a06203c6d830b4436430cc77101b7
Date: Sun, 09 Jul 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688935028
