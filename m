Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4AE171D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 08:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0073C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689840729;
	bh=mBOyxbMAgjEGEB3WhsV+g0FgWgVZVpWeVUzhAOXXLGs=;
	h=To:Subject:From:Date:From;
	b=sHXDIRP5qThgZ5E2XwmZlKex9L8OI9dTTR+2T6vFH06wXwJIMegEHDuU7oVW3dgNH
	 PrIzFJTmBXXcer0ryQk2Dn13Zku6FkuwPgxRLkc8MpHDyLhXJwsDUOY5HeiTKoIqKK
	 ez0nmTftFXpMZPjXHHE8CCn8oScP1rMC+cXr/icFt7CQbOrqwqn6Q69Uo5y9j/32+/
	 cHfmgitmYj+ASjnMgxxv0bOcUuRsB3CFwpb8HLhJK0w3r9apDa87PqusKLSIZBIX1Z
	 vIqyY9fzsvIe4FzHSCH0U1A9F01iWXRPGOxi0YG5eOK4yKH69hHyKLl8EEhaxb0SBp
	 GAlk2QWcy+okw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6962EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 08:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168984072880.2064.16839927178090742217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d1b523468fd186a1473e238427e5b5aea97ed815cc936df22d188b5debf336
Date: Thu, 20 Jul 2023 08:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689840728
