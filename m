Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B399C33DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62863C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663933253;
	bh=MDkOW/J7/Odu2Q92Mwtw3025mJ8AdpC8A+RMHxuTrbg=;
	h=To:Subject:From:Date:From;
	b=uom/qbHFVXBdGccmAeWcBt76w9Uf9aYYrSpSx1zwgJ8/AlHHDGxSOfC7FImGDTSpz
	 xEya33JDcEi9ZiD0hQGRz0J7JmpLGpQY9xb+wkbzC7ZSXZtVQBR2ZF7+Vp+SwKeaTv
	 fUHn1FGjGjsDKlWqQm8PAlENDXg7wZyB5SUa2aXJMXDC8lPgmg7WkKtNoVZWccQ6+r
	 Ud0OwHMKN+Y3+XvgTxuEK8a2N69q8j90R+FEVYFu7Sbd3r7qcaypQALBvKjVz+YFy0
	 1ouUgqJhhfgguMDhJp5MOMC9ceEsas3HPO1k9PamQ8PzS/9Fp1ZusvK+pQAWJBdSeI
	 qtwG8tLeD7Z0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F193C6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393325331.28714.6052372500210671880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6983818d1527d6680a8ee1f2c605d0675bc33d3e6ee4d7b634084ae732fa2f02
Date: Fri, 23 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663933253
