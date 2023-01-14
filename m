Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8BC63D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85595C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673712087;
	bh=NPnKJYvWIz24pHnz/QlDzRxDXOg9ukg2uI6AvmRNVV0=;
	h=To:Subject:From:Date:From;
	b=VVqOTD0xti9IfWTSyoGv3MOf/Nweg80hjDStFcxIdbaJ5fF/sYeZZ4KnoktEtRPOY
	 UqEHp5b5ZF6sKL3p82C5PSLuSekxXnaWmG2HszmxvcawmLd1o2YUFKnIn4rOWLmqdu
	 bQsQpa5zBLIDZtzqghZPP9LKhE7IPqlEyTaA5ZacWZq32cnLuOUnFFgugefrcuS7UE
	 GlqDuTyQizXrt/i8wJ92r8lz9qekOzniOwZ3/iufGXiZLptLiIro/4nhr0L1cNu0H8
	 P00hxCd4QbzxL2UPmEtKTuuR9YwAGivL3KBomGeMBdG8NJ42Ad9/w5FYJOWF7rVwWk
	 81lyP87E64e+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ABCC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371208740.25160.11308936528348619325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe88b91bdb004ccb3cb03b2d2f435ddad6a2d7bf08979fe491b905a5374dc545
Date: Sat, 14 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673712087
