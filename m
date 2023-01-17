Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05CC1FA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3D3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673936487;
	bh=U64hevwSfR1mysAqED66JyrSFR5dNF6Vh8hSZ1aqXkw=;
	h=To:Subject:From:Date:From;
	b=Fzgnahs01dSRG8fWlG6AmNmbuDLlJ7QihiZUywN6hwYs82KWc6u6sRwlNHfrTlXQp
	 dwinLYW+MFyMiNKlwwYuiUgCFfdE8+AeadIqgwstwO3I2HRy+j7s3w6Lq1DIbZ7Wg3
	 k8GQ/dkyHVzJgfP/ZE8mQjKbO6lX2ffi7yOEx7wg12Eob0XAt311NL0Dp9SPaB9d1Z
	 UHWx4Egz+Ofu5KVgTZom5vgCGD2CR3/rXDRiZ+y1xsg2dqIlzGkHEFSomMuPFA6LFO
	 jlxhZOuGmT5/U+gogipltb20hMlV26k4fWCHpybhrUM7QIGwEclztJGMadGxFKzuJR
	 xWDL/PXUOf7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E187C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393648743.17139.16829486288724057192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8e7e06a5bc22516e7f8c779ebe2772e17f689cea33a21a54961727fc797972
Date: Tue, 17 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673936487
