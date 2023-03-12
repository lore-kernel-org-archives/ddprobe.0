Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2110E6
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD35C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678589766;
	bh=PeQQF5rdHLOHXEQCl9E2JkOEdHPF32WZblv3g27sRdU=;
	h=To:Subject:From:Date:From;
	b=pHMj8Q9TYpk4jI4B25T/2BOJLFev9XVohnojdLRAhmNyWZF+nrrH4NEXpvsE8D5zQ
	 tm9jGmHaZYQ1zGVGAcEniSgPOC5o+B3ucAmYtHmNPIfipTDbtuW2LQAcoph4c8vDuA
	 hGnWEvK7r0NJampuY/5cthAKQOk8Q7qUN5E7+EYsoeZSbvXyWRI3976QbuF/es5lbZ
	 c6xEbB6sbQ+fvxUMx3jGHNSpJRYPgPbpD113sSaWqXdac2Uf6jnbEwO97G5kNOgTLP
	 KgzBQGZQR/e0hlehCaF65Pe24KwHZ1xmvsWI0K8Eb63H9hMgw+wFwFP1K0vWYZktTx
	 TkFpAuroi+Swg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A3BC74A44
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167858976579.5185.14116498462172938249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd59f2d386e7793e9b2069d4b137ea3ccc1b73c8d143c6c33ff9f7b4c8aa70b
Date: Sun, 12 Mar 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678589765
