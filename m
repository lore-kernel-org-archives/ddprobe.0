Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87EE7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92167C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672897287;
	bh=Exj7z/VdSL6RAOtYyGzv2CBLL26SwUaq1DTlNMa1FSE=;
	h=To:Subject:From:Date:From;
	b=UYoZ1IN7V/RD5WA1P14pJDrb+IT3Z4UO7s0eJoxa0cO/6UsK44ZKAiQ0PTKt6h3XR
	 ABsekLxF3MO95VTNhI+gEhF5KWoBkDZchdKGPENNwcKXkoR2kkmyEl73DOSIDq59KE
	 rfXZOPERDJ4TDWnCfmdgCxuzpfXUtBaI6S0FlpFMvL4Lq9o9v/G3xKzI0N4+Llv1Zr
	 bjBYhDR2Ya6OET9EPdgsQDvZ5xDzhjdh9SoyFrUgRFfB0CsQP9uuG09zk89s9U/pIk
	 1nP/J31f1Xp1Q7g8MmBp8kq2YLTMSDDY7EwG1iXz3ZdbqhlWmHjXFuXI+KF/Acyt3v
	 nUPGEBA59H52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAACC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289728740.31348.1300246382692895499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a60e752a7e4e0c7ba5d4b5ca5f2984bb6d9df7b6a5dd97723a641cc14f9a0d
Date: Thu, 05 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672897287
