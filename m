Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D8F184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB03C433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663284053;
	bh=BAzzN7XaRMdnxJRuxRV8x5Wj2dglgHeRJc8PyD8wYEs=;
	h=To:Subject:From:Date:From;
	b=t25KxJv4bNsDnEGtb6fejMhY7hr30gXc/N4x9YS59fv5nX5BGhiOX5aNSwF4H1L8Y
	 YsNdont5l0MUoB1vx80F7LDpaH63lZHlEr4fYHGsFXN5GIox5fvTU3F+wm0A+dT5Dk
	 +RSuGI1oUOkJtxGuYyLO9Ha6GhutWShvLD9Wr3H2iw/2H8ut7a1lCHy9rhxoxjYol6
	 uSfv29iItOXXwR01r4wZ9ewUnrdeiqySpw2n5XXlau0mtGo9dTJ5HPuJfAK1cvv+W1
	 IpAqyafUr8t9dwDhEnYIwZNCs7FG1+8m3HJoHuZKFZT2YtiDPPqap+2FCrLuJP4r5g
	 CTOBrsqg+kikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533C9ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328405333.5293.538387820877491780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987cf045005fef79e5a32b17a0dad432dd88f1beca51f31ce6bdebcbfef976db
Date: Thu, 15 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663284053
