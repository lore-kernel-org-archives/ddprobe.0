Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9767A17C8
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD851C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685843285;
	bh=K2ma+p/LrR5qn99sMQN521bDSf3Jy+fDXQrCdIgvHYE=;
	h=To:Subject:From:Date:From;
	b=UkW5JL9Gs+5w8jrGCoboH1lePeBP6fbty3N4BRyCIrtERxlE53pVATRrqf+u08j3X
	 HkgClB/S42zavsunF5WvmHSyFWYSLtA/oAdFfsBOAHAYxZBcjgmcORXOjsbqNRgUHe
	 VN9Y2UL6HQbkpGnWtfKA69cHiAG7rXReSicltLt1Z6nFpM90M8i86IWLsfHyOfj6uR
	 LoWtEQAo65OhCGVfXHQ4WxDsN/baOJ4KwnC8CGB8HPj4q3ujd4h0vHGE73YoqPbtKg
	 B3TxWAAy7TltbUCczFFCrYtJqkKnm8aQXFFtfPYTNeknSNH1JVxvpCAUJaLedP7sq6
	 MNtMu85TXy8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8B0C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168584328575.3578.3558271686512188006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07d766e29f0eb2badbc28476c5599bfa61aad4c2d7ff96b40e0e6ee2882fc76
Date: Sun, 04 Jun 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685843285
