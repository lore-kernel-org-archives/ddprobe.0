Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6ADD537
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR/pzJ+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90AB2C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699432696;
	bh=EAmhnXtHFBHffRkhCPXm42GabR1Q3Sq5+VFe09Agg40=;
	h=To:Subject:From:Date:From;
	b=MR/pzJ+tGZqpBzAyniv2Pm++ERQPRUOzTPhXqUT/O1rAX3SxZxSkZ0+IZFSmRRVLU
	 lpClVz61+XZlOgYSPf9Bul7qLtx5ZoOqvwJWve7WYfzknLMPa0IJ3Gk2CEMEhOP5QF
	 Eu3XII8wwguncRGUk2wFtMYZs5yar2wwaQAxeE4W+5h+U+PRGfJmYSIXNfXBMMKmoO
	 9uEOVDRsVgnLNhOD4iNpB5Qda4XoazxoKKGbszSv5r3aD6gKZEeXibdYgA2t0mH2Uq
	 9GV1a6CSkLrDMnQIV2n3jXmaFiYCD149YvG+S58Jnnqs07HbgkV80lnvt8cqXqXQLz
	 tYThKQVe/uNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70527C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943269642.24694.14761875704119887749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff4695f359bec4b02a16c5bb7a9f2363057097133f5fc316a7fd539d2cb88ab
Date: Wed, 08 Nov 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699432696
