Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C8FBA41
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCB5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673726487;
	bh=8sLuErdEKdo1DsBQ5uHOQF9238HY5o3ZAp8IYv2XJ1s=;
	h=To:Subject:From:Date:From;
	b=HzVIxkG1MrOp8+SAIX1H/aHh9dBFr/230aC2zIHsaCiKiLnr8t0lHVnET3cUwqAxl
	 P3/zI4Ld/w+ryEnpDhkvEOJh4z19XRHByUreT6U1u9/q2be5616wI3jh473k9FdIqt
	 pcyNy5QXWHE8cM1ubzp78pBDI4An/Uzx6RBAsyEt+YTviFLLAr0TOZ0G/wMfDuUCzF
	 UwTacwnNZeRCA4ROBHW726hnYqnquwuxQL8vxKiyGJeJkgb1ZXxbFYN1WrA03jxK1J
	 XMJbye3Y3TegiUVgkZgwvgzXfGId6p2or/g9zZr/UhsQVHtKGmRrWmX7o1JRbdd+dM
	 j+6OVRnYm6Eag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A5EC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372648745.7231.5096086339182297714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4712babaee62810de50f4d889946b0e6b58b209f8c355d4120018a485eabb063
Date: Sat, 14 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673726487
