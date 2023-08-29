Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CD47FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5248C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693273448;
	bh=ZwRWdd6v5s2dLGIc6Y3f14ewpHeIF/mYQ7243lgS5hs=;
	h=To:Subject:From:Date:From;
	b=fcJ8SqMzj1rZ5sBf239MKZ9RpB8Cbr+IzLPUbZmJddlw9MPqm5yQoIh41B1GG3mjJ
	 mhfpzz+3HRFb8W3jnVYJ7h5QDjsMSV8BAvtVjJToPvLENQ+61hJ7CsyApcpnhfxCoV
	 2WriGR19ver9sXdNTRHIql3KREqC6uJHUIRQ8xKJQeMvLYFFHwamSbkJPxJLtQk496
	 yVWxOKEDnqV7RJmOpIzUmSZbE2PhXd6VrMNEkTqzuHEp0IR/lYjJVE26JxawG4Qut5
	 qCpjoWqmfamkPtWGc+6ihEUSNVRJWUapHSzuS4K4KWG6NnabFvh3WC26gf+16UvYC2
	 20JDoqab976Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6832C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169327344867.29231.8049439428347967192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd43e21cc78c2d7a0f8d0d9bb01bfacb0f598976cbb52c7c50a7fcfe0646754
Date: Tue, 29 Aug 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693273448
