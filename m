Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1A3440C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRlb4Cto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86ACDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704852496;
	bh=vgSWH2OgDY6Z7YQsex07jsAMuD5SNqMBsPi1M0tetRE=;
	h=To:Subject:From:Date:From;
	b=qRlb4CtoRUvTlEh4RmPs7SnMLQ97GzHOHiFwd1mmehkCqBdhC70OmEPSO20ZATXxb
	 KYk2kAnWvKe46F4q7GgeSMb6NxlJhbNEKKQRcN3eDuvBdDjGtfbr3S42YxSe8Wfj7m
	 rmX/xxnb4CKJY926xazCyKNQqVrPMNbrHEbbnJE4mvgr5T/1jwMLSBFYvp9M6WvXlQ
	 6dTGJgMHFTMGlC4Ofj7vv18dWd8Aw0qbCvyxMNwAKmq6qjg6A8u/CvuFOoCdZHkzOs
	 UCrMOfnLyCm0hCxsauiBgiocosvOcdAlGGJfEqPQzzmv4bjXpoZ7Uv5tv28ePFfLAk
	 Jg7qS/iRa5BwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD78C47077
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170485249640.16750.2722656469465127163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931863eab52e472cc54073ffd696b3598e22b5ca6350e127cf58590d044319d2
Date: Wed, 10 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704852496
