Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6565A7E
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 10:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8405C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693997048;
	bh=gRDvVAqAVpZFP40Hjg6XbFgY1i/Wv+99usXczme28+s=;
	h=To:Subject:From:Date:From;
	b=k/tyWXmYw0Ef7OvX/RCsRJfTieZV3K3HdU91gmN2QT3RAf/18QasK/qowrLehas7j
	 gK6sJyr45ujiNt1/vy7ndtfWO2QGEEBfM0uNOrw6bjHkgloVlvjMxDWp0enzrm1kXF
	 lN/nQEj4mLPsbDsckfGfoMe8kRh7UqUhVKjIqr4cGLFQlgkO6auIKlUqZBckv+a5qb
	 /t3UnAZVXoFr2yQhbTQrmMt9ByMQDg9jGTigmUNoZdqernicAXTe9qC6BKDYkNZhOK
	 qyW4SB2HLi4Xj3IVe5Ykx9xgBrLX1cw1zYebxjg+ZqGVyS/AUWmmRZcrgeFH9o8Xh4
	 wv2KWaIpyP7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDCEB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169399704868.12985.4849550557960733723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f6405a2bafd1e8d14bce0085c8366b45b9819522d613438a208cf9c1efee8d
Date: Wed, 06 Sep 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693997048
