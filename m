Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43A0EC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F1FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668395454;
	bh=T9NlMHFIOM4gB9l9aFFzdldgIqkIX2fH5mQfmIb2Omg=;
	h=To:Subject:From:Date:From;
	b=hbtR68ZKlQRMs1Xjm3xLtZo2WuJQEI3NdXgzfQQOPmvSpfIeKXEbrnbwabgRPRJwY
	 9mFiDl1EqFRGHeCuGK+4y1DKlPNJYVI1rL+aY2QwYI731+b0pAV+VPfB8GQWBw6SNE
	 Hlko9mYF6+3cYu7Iv/4A/zcXRYlqiixK8AV16Ge/3660iwcbqQ7D2P9Gishtz2Jnm/
	 Ik8Y3IBzne+5JfZPAS/incBad9tqypUrkOSqgdnh2hpQgmHHbqf1yWn+7Hr9aNq6EW
	 XNPbA8mOWSo2nZxnF5V+P7p23t3gAN136gi15UFrQS46H0Jplj52qqMzfx7x+UfmLs
	 w1hZ60QnLN2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5262DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839545431.594.16989285570687633702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcdf385e646ad2ac5e0ef942736ae1f7798ab2b6e1dfac8ecef1ca7aa1d7770
Date: Mon, 14 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668395454
