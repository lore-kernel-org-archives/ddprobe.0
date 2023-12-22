Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3C92C1A7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Do3uU9AE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3BDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703279296;
	bh=ZgrZso1cAmOQH91v18+QADspOTJ8VlCNBKBpV0kK1hw=;
	h=To:Subject:From:Date:From;
	b=Do3uU9AESlSr3AW6GyTNJpiV0Zijubn4F6ersxvxqTLa9iLVf0OrHIX82UZ0L+PdT
	 gSkTjAyKFeNPIt7xg8NO3E6do+1VyN54kCJihomrNmOar5k2LxJ0m6YawJ+cXWR8R2
	 MhXVbhOkrQyDYNUvDauGPiX4YJ/ENZBBXFvAJEbVBpRFCgkhR1YaDC+8b3evUu6rQk
	 GfFT5wxJ2DNGqUz3TGCNoKlWY0zMl59KSIziKh/4ICE56AXS6rJ8pLzuF7GqPBIWZn
	 1bBxLWo8K/Qm37MfMCm10uB0En8TtCa5NquBAALJNZb8/2lgVgwWGAEp023rw3bAAp
	 LdLZbfO+/zHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604E8C4706F
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170327929638.23411.12377382185975461210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0187ed45dbe5b075a8de844885da9185288e00af75d751199aff376b59a04d44
Date: Fri, 22 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703279296
