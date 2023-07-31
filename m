Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293D618000
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA04C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690803128;
	bh=yn5rDTs5RS48UVxarHeHqlJAZTksvH1lnvnI+dDdPWo=;
	h=To:Subject:From:Date:From;
	b=fiqZLjTxlhOESMf4dPRPz+5FEUQWWwoyXZvehYuFqEdWp0nnatpyVbaiiQFPevPxs
	 TWmGAl3OYy7iKRqAHW4EvJe1cLTp+el+PDQg4Io9sUAz5D2NWBzJGO148jB2ZF78NJ
	 GaQ47SiVeBcJGD4PjIzXklFHGshSht/x4mOVwWNcYPZ1GpNCPdN2DZuf0AmUdhRjkE
	 DOWVBmwmMgA6iv0ZtlCl0byAnEd66r2/lA/yfSFXRFHhv40hE/52MmochVZuVJlf8y
	 gcIqTQEDKkEEAqFiX4uepEfKw0Y/AAB2sN30YdvTCevwv+8J81iDWsl/rBKYuOhX0c
	 SJVa/CQ9R+kFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5720C001DF
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080312866.29476.7573746328704936915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34c6007c59f2592afd7007abdb72ecd63c0e6f144e7e3c18448d5458f71ac3f
Date: Mon, 31 Jul 2023 11:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690803128
