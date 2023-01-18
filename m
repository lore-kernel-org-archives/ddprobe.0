Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B6B23A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674020487;
	bh=GMIxwAbDh6S6vD9UYdR0ElxcaNvJfhWb8oauoWVcMq0=;
	h=To:Subject:From:Date:From;
	b=gBeFOFMddZMJ4I9N+MnUmRTSHXsoC/x1prb4I5tVu9EagZD7S8wCm265uQ/Nr4Sl5
	 /huFtnIGilUT0WilLDhtQ4pXxUzSDvg6oRp5uBBzBY++fzpS52UerTy4PfUQ3MwEEP
	 R9MNPK/cHOp8hCn2NsJXVgXkhPND01ZUoMd/DQw4kgLpiRV/e2U+jU3p8i+whmo3Jt
	 KlXYHTOvLQn6frA9zH5OPomsfpnDd9KYZ08Gq61vndf1qbrxmG1bBh1wWDyiqivjiM
	 1sotQZsf9o6MBfU/sB6u6c3mJXSTvdxa4T7zB2WLE7yLPsae7a5M633hWxgIH+imQO
	 xN5aT16En7MFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84BFDC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402048752.15388.11008513767786036046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbc7232f4e1005cae258f7e5e64d549916416bb1cbfac9dcf332d5ca234cffc
Date: Wed, 18 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674020487
